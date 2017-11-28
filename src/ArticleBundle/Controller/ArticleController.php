<?php

namespace ArticleBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use ArticleBundle\Entity\Article;
use ArticleBundle\Entity\Image;
use ArticleBundle\Form\Type\ArticleType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;

class ArticleController extends Controller
{
    /**
     * @Route("/add", name="add")
     */
    public function add(Request $request)
    {
        $session = new Session();
        $article = new Article();

        $article->addImage(new Image());

        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $article->setFosUserId($this->getUser());
            $article->setAdded(\DateTime::createFromFormat('Y-m-d H:i:s', date('Y-m-d H:i:s')));

            $em = $this->getDoctrine()->getManager();
            $em->persist($article);
            $em->flush();

            $session->getFlashBag()->add('success', 'Vôtre article a bien été enregistré');

            return $this->redirectToRoute('showAll');
        }

        return $this->render('article/add.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/", options={"expose"=true}, name="showAll")
     */
    public function showAll(Request $request)
    {
        $repository = $this->getDoctrine()->getRepository('ArticleBundle:Article');
        $articles = $repository->findAll();

        return $this->render('article/showAll.html.twig', [
            'articles' => $articles
        ]);
    }

    /**
     * @Route("/show-one/{id}", options={"expose"=true}, name="showOne")
     */
    public function showOne($id)
    {
        $repository = $this->getDoctrine()->getRepository('ArticleBundle:Article');
        $article = $repository->find($id);

        return $this->render('article/showOne.html.twig', [
            'article' => $article,
        ]);
    }

    public function addFilterToSidebarAction()
    {
        $repository = $this->getDoctrine()->getRepository('ArticleBundle:Article');
        $brands = $repository->getBrands();
        $categories = $repository->getCategories();
        $sizes = $repository->getSizes();
        $genders = $repository->getGenders();

        return $this->render('sidebar.html.twig', [
            'brands' => $brands,
            'categories' => $categories,
            'sizes' => $sizes,
            'genders' => $genders
        ]);
    }

    /**
     * @Route("/ajax/request", options={"expose"=true}, name="ajax_request")
     * @Method({"GET"})
     */
    public function ajaxRequestAction(Request $request)
    {
        $repository = $this->getDoctrine()->getRepository('ArticleBundle:Article');

        if ($request->query->has('articles')) {
            $getJsonArticles = $request->query->get('articles');
            $selectedArticles = json_decode($getJsonArticles, true);

            $articles = $repository->findByFilters($selectedArticles);
        }

        if ($request->query->has('search')) {
            $getUserSearch = $request->query->get('search');
            dump($getUserSearch);

            $articles = $repository->findBySearchBar($getUserSearch);
            dump($articles);
        }

        return new JsonResponse($articles);
    }
}