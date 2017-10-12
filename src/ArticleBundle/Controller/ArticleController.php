<?php

namespace ArticleBundle\Controller;

use ArticleBundle\Entity\Article;
use ArticleBundle\Form\Type\ArticleType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class ArticleController extends Controller
{
    /**
     * @Route("/add", name="add")
     */
    public function addArticle(Request $request)
    {
        $article = new Article();

        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $article->setFosUserId($this->getUser());
            $article->setAdded(\DateTime::createFromFormat('Y-m-d H:i:s', date('Y-m-d H:i:s')));

            //dump($this->getUser());
            //dump($article);

            $em = $this->getDoctrine()->getManager();
            $em->persist($article);
            $em->flush();

            return $this->render('article/add.html.twig', [
                'form' => $form->createView(),
            ]);
        }
        return $this->render('article/add.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}