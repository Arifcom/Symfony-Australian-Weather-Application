<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

use App\Entity\City;


class CityController extends AbstractController
{
    /**
     * @Route("/city", name="city")
     */
    public function index()
    {
        $data = $this->getDoctrine()->getRepository(City::class)->findAll();
        return $this->render('city/home.html.twig', ['data' => $data]);
    }
    
    /**
     * @Route("/city/detail/{$id}", name="city_detail")
     */
    public function detail($id)
    {
        return $this->render('city/detail.html.twig', [
            'controller_name' => 'CityController',
        ]);
    }
}
