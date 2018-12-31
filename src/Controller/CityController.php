<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

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
     * @Route("/city/detail", name="city_detail")
     */
    public function detail(Request $request)
    {
        $data = $this->getDoctrine()->getRepository(City::class)->find($request->request->get('id'));
        $request = 'http://api.openweathermap.org/data/2.5/weather?q=' . $data->name . '&appid=610587cc5d3cb7ca56756c9642308387';
        $response  = file_get_contents($request);
        $json_object  = json_decode($response, true);
        return $this->render('city/detail.html.twig', ['data' => $data, 'json_object' => $json_object]);
    }
}
