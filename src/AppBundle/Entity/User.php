<?php

namespace AppBundle\Entity;

use ArticleBundle\Entity\Article;
use Doctrine\Common\Collections\ArrayCollection;
use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    private $articles;

    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    public function __construct()
    {
        parent::__construct();
        $this->articles = new ArrayCollection();
    }

    /**
     * Set $articles
     *
     *@Param array $articles
     *
     * Return User
     */
    /*public function setArticles($articles)
    {
        $this->articles = $articles;
    }*/

    /**
     * Get articles
     *
     * @return array
     */
    public function getArticles()
    {
        return array('articles' => $this->articles);
    }

    /**
     * Add article
     *
     * @param \ArticleBundle\Entity\Article $article
     *
     * @return User
     */
    public function addArticle(\ArticleBundle\Entity\Article $article)
    {
        $this->articles[] = $article;

        return $this;
    }

    /**
     * Remove article
     *
     * @param \ArticleBundle\Entity\Article $article
     */
    public function removeArticle(\ArticleBundle\Entity\Article $article)
    {
        $this->articles->removeElement($article);
    }
}
