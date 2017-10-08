<?php

namespace AppBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    /**
     * @ORM\OneToMany(targetEntity="ArticleBundle\Entity\Article", mappedBy="fosUserId")
     */
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
     * @Param array $articles
     *
     * Return User
     */
    public function setArticles(array $articles)
    {
        $this->articles = $articles;
    }

    /**
     * Get articles
     *
     * @return array
     */
    public function getArticles()
    {
        return array('articles' => $this->articles);
    }
}