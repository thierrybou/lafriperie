<?php

namespace AppBundle\DataFixtures\ORM;

use AppBundle\Entity\User;
use ArticleBundle\Entity\Article;
use ArticleBundle\Entity\Image;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class Fixtures extends Fixture
{

    public function load(ObjectManager $manager)
    {

        for ($i = 0; $i < 100; $i++) {
            $article = new Article();
            $image = new Image();
            $image->setTitle(null);
            $image->setImageName(array_rand(array_flip(['black_pants.jpg', 'black_sweat.jpg', 'blue_jeans.jpg', 'tee_shirt.jpg', 'IMG_7846.jpg', 'ceinture.jpg', 'calecon.jpg']), 1));
            $image->setUpdated(new \DateTime('NOW'));
            $image->setArticleId($article->getId());
            $article->setName('article '.$i);
            $article->setBrand(array_rand(array_flip(['nike', 'adidas', 'caporal', 'oxbow', 'gucci']), 1));
            $article->setCategory(array_rand(array_flip(['chaussures', 'pantalons', 'sweat', 'sous-vêtements']), 1));
            $article->setModel(array_rand(array_flip(['boze', 'smoked', 'running']), 1));
            $article->setSize(array_rand(array_flip(['XXL', 'XL', 'L', 'M', 'S']), 1));
            $article->setDescription('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id ultricies eros. Pellentesque habitant morbi tristique senectus et netus et.');
            $article->setGender(array_rand(array_flip(['femme', 'homme', 'unisex']), 1));
            $article->addImage($image);
            $article->setQuantity(mt_rand(1, 100));
            $article->setPrice(mt_rand(10, 100));
            $article->setAdded(new \DateTime('NOW'));

            $manager->persist($article);
        }

        $encoder = $this->container->get('security.password_encoder');

        for ($i = 0; $i < 10; $i++) {
            $user = new User();
            $user->setUsername('user_'.$i);
            $user->setUsernameCanonical('user '.$i);
            $user->setEmail('test_'.$i.'@gmail.com');
            $user->setEmailCanonical('test_'.$i.'@gmail.com');
            $user->setEnabled(1);
            $user->setPassword($encoder->encodePassword($user, '281185'));
            $user->setRoles($user->getRoles());

            $manager->persist($user);
        }

        for ($i = 0; $i < 100; $i++) {
            $image = new Image();
            $image->setTitle('article '.$i);
            $image->setImageName(array_rand(array_flip(['nike', 'adidas', 'caporal', 'oxbow', 'gucci']), 1));
            $image->setUpdated((new \DateTime('NOW')));
            $image->setArticleId(array_rand(array_flip(['boze', 'smoked', 'running']), 1));

            $manager->persist($image);
        }

        $manager->flush();
    }
}