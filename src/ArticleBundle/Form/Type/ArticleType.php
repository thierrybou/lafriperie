<?php

namespace ArticleBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Vich\UploaderBundle\Form\Type\VichImageType;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class)
            ->add('category', TextType::class)
            ->add('brand', TextType::class)
            ->add('model', TextType::class)
            ->add('gender', ChoiceType::class, array(
                'choices'  => array(
                    'Male' => true,
                    'Female' => false,
                )
            ))
            ->add('description', TextareaType::class)
            ->add('quantity', IntegerType::class)
            ->add('price', MoneyType::class)
            ->add('imageFile', VichImageType::class)
            ->add('submit', SubmitType::class)
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'ArticleBundle\Entity\Article'
        ));
    }

    public function getBlockPrefix()
    {
        return 'articlebundle_article';
    }


}
