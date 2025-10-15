---
firstname: "Sarah"
lastname: "Müller-Chen"
title: "Real-Time Raytracing und KI-beschleunigte Denoising Algorithmen für photorealistische Computergrafik"
category: "master"
date: 25-06-2024
first_supervisor: "Prof. Dr. Martin Nöllenburg"
second_supervisor: "Prof. Dr. rer. nat. Volker Coors"
teaser_image_url: "teaser-image.jpg"
teaser_image_copyright: "Photo by NVIDIA Research"
thesis_url: "thesis_sarah_mueller_chen.pdf"
keywords:
  - "Real-Time Raytracing"
  - "Computer Graphics"
  - "Denoising"
  - "Neural Networks"
  - "RTX"
  - "DLSS"
  - "CUDA"
  - "Photorealistic Rendering"
cooperation_partner: "NVIDIA Corporation"
cooperation_partner_url: "https://www.nvidia.com/"
repository_url: "https://github.com/sarahmueller/realtime-rt-denoising"
project_url: "https://rt-denoising-demo.nvidia.com"
personal_website_url: "https://sarah-mueller-graphics.com"
personal_social_media_urls: 
  - "https://www.linkedin.com/in/sarah-mueller-graphics"
  - "https://twitter.com/sarahcg_dev"
  - "https://www.artstation.com/sarahmueller"
---

Real-Time Raytracing revolutioniert moderne Computergrafik durch physikalisch korrekte Beleuchtung bei interaktiven Framerates. Diese Masterarbeit entwickelt neuartige KI-gestützte Denoising-Verfahren für rauscharme Raytracing-Ausgabe.

Das entwickelte Deep Learning Framework kombiniert Temporal Accumulation, Spatial Filtering und Geometric Priors in einem End-to-End trainierten Convolutional Neural Network. Spezielle Architekturen für Reflexionen, Schatten und Global Illumination werden durch Multi-Task Learning optimiert.

Implementiert wurde die Lösung mit CUDA/OptiX auf RTX-Hardware mit DirectX Raytracing API. Der entwickelte Denoising-Algorithmus arbeitet mit nur einem Sample per Pixel (1spp) und erreicht visuell konvergente Qualität bei 60+ FPS in 4K-Auflösung.

Benchmarks mit verschiedenen Szenen zeigen 90% Rauschreduktion bei 2ms Verarbeitungszeit, 15x Performance-Steigerung gegenüber traditionellen Monte-Carlo-Methoden und artifact-freie Temporal Stability. Die Technologie ermöglicht photorealistische Real-Time Graphics für Gaming, Architekturvisualisierung und Virtual Production.
