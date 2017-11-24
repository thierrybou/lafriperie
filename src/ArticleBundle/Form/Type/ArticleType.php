<?php

namespace ArticleBundle\Form\Type;

use ArticleBundle\Entity\Article;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
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
            ->add('name', TextType::class, array(
                'attr'       => array('class' => 'uk-input uk-form-width-large'),
                'label_attr' => array('class' => 'uk-form-label'),
            ))
            ->add('category', TextType::class, array(
                'attr'       => array('class' => 'uk-input uk-form-width-large'),
                'label_attr' => array('class' => 'uk-form-label'),
            ))
            ->add('brand', TextType::class, array(
                'attr'       => array('class' => 'uk-input uk-form-width-large'),
                'label_attr' => array('class' => 'uk-form-label'),
            ))
            ->add('model', TextType::class, array(
                'attr'       => array('class' => 'uk-input uk-form-width-large'),
                'label_attr' => array('class' => 'uk-form-label'),
            ))
            ->add('gender', ChoiceType::class, array(
                'choices'  => array(
                    'Male'   => true,
                    'Female' => false,
                ),
                'attr'       => array('class' => 'uk-select uk-form-width-small'),
                'label_attr' => array('class' => 'uk-form-label'),
            ))
            ->add('description', TextareaType::class, array(
                'attr'       => array('class' => 'uk-textarea uk-form-width-large'),
                'label_attr' => array('class' => 'uk-form-label'),
            ))
            ->add('quantity', IntegerType::class, array(
                'attr'       => array('class' => 'uk-input uk-form-width-small'),
                'label_attr' => array('class' => 'uk-form-label'),
            ))
            ->add('size', TextType::class, array(
                'attr'       => array('class' => 'uk-input uk-form-width-small'),
                'label_attr' => array('class' => 'uk-form-label'),
            ))
            ->add('price', MoneyType::class, array(
                'attr'       => array('class' => 'uk-input uk-form-width-small'),
                'label_attr' => array('class' => 'uk-form-label'),
                'currency'   => 'EUR',
            ))
//            ->add('imageFile', VichImageType::class, array(
//                'attr'       => array('class' => 'uk-button uk-button-default'),
//            ))
            ->add('images', CollectionType::class, array(
                'entry_type'   => ImageType::class,
                'entry_options' => array('label' => false),
                'allow_add'    => true,
                'allow_delete' => true,
                'by_reference' => false,
                'prototype' => true
            ))
            ->add('submit', SubmitType::class, array(
                'attr' => array('class' => 'uk-button uk-button-default'),
            ))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => Article::class,
        ));
    }

    public function getBlockPrefix()
    {
        return 'articlebundle_article';
    }


}
