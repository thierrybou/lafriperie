<?php

namespace ArticleBundle\Repository;

use ArticleBundle\Entity\Article;
use Doctrine\DBAL\Connection;

/**
 * ArticleRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ArticleRepository extends \Doctrine\ORM\EntityRepository
{
    public function getBrands()
    {
        $qb = $this->createQueryBuilder('a');
        $qb
            ->select('a.brand')
            ->groupBy('a.brand');

        return $qb->getQuery()->getResult();
    }

    public function getCategories()
    {
        $qb = $this->createQueryBuilder('a');
        $qb
            ->select('a.category')
            ->groupBy('a.category');

        return $qb->getQuery()->getResult();
    }

    public function getSizes()
    {
        $qb = $this->createQueryBuilder('a');
        $qb
            ->select('a.size')
            ->groupBy('a.size');

        return $qb->getQuery()->getResult();
    }

    public function getGenders()
    {
        $qb = $this->createQueryBuilder('a');
        $qb
            ->select('a.gender')
            ->groupBy('a.gender');

        return $qb->getQuery()->getResult();
    }

    public function findByFilters($articles)
    {
        dump($articles);
        $qb = $this->createQueryBuilder('a');
        $qb
            ->select('a');

        if (!empty($articles['brands'])) {
            $qb
                ->andWhere('a.brand IN (:brandFilter)')
                ->setParameter('brandFilter', $articles['brands'], Connection::PARAM_STR_ARRAY);
        }

        if (!empty($articles['categories'])) {
            $qb
                ->andWhere('a.category IN (:categoryFilter)')
                ->setParameter('categoryFilter', $articles['categories'], Connection::PARAM_STR_ARRAY);
        }

        if (!empty($articles['sizes'])) {
            $qb
                ->andWhere('a.size IN (:sizeFilter)')
                ->setParameter('sizeFilter', $articles['sizes'], Connection::PARAM_STR_ARRAY);
        }

        if (!empty($articles['genders'])) {
            $qb
                ->andWhere('a.gender IN (:genderFilter)')
                ->setParameter('genderFilter', $articles['genders'], Connection::PARAM_STR_ARRAY);
        }

        if (!empty($articles['prices']['from'])) {
            $qb
                ->andWhere('a.price >= (:priceFromFilter)')
                ->setParameter('priceFromFilter', $articles['prices']['from'], Connection::PARAM_STR_ARRAY);
        }

        if (!empty($articles['prices']['to'])) {
            $qb
                ->andWhere('a.price <= (:priceToFilter)')
                ->setParameter('priceToFilter', $articles['prices']['to'], Connection::PARAM_STR_ARRAY);
        }

        return $qb->getQuery()->getArrayResult();
    }

    public function findBySearchBar($userSearch)
    {
        $qb = $this->createQueryBuilder('a');
        $qb
            ->select('a')
            ->where('a.name LIKE :search')
            ->orWhere('a.description LIKE :search')
            ->orWhere('a.category LIKE :search')
            ->orWhere('a.brand LIKE :search')
            ->setParameter('search', '%'.$userSearch.'%');

        return $qb->getQuery()->getArrayResult();
    }
}
