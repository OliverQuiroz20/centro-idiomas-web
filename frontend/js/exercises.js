const exercisesByLevel = {
  A1: {
    title: "Ejercicios del nivel A1",
    description: "Actividades básicas para comenzar con vocabulario, frases simples y comprensión inicial.",
    exercises: [
      {
        type: "Vocabulario",
        title: "Saludos y presentaciones",
        description: "Aprende frases básicas para saludar y presentarte.",
        duration: "10 min",
        xp: "30 XP",
        icon: "🗣",
        iconClass: "speaking"
      },
      {
        type: "Lectura",
        title: "Mi rutina diaria",
        description: "Lee un texto corto sobre actividades cotidianas.",
        duration: "12 min",
        xp: "40 XP",
        icon: "📖",
        iconClass: "reading"
      },
      {
        type: "Gramática",
        title: "Verbo to be",
        description: "Practica el uso básico del verbo to be.",
        duration: "15 min",
        xp: "50 XP",
        icon: "✍",
        iconClass: "grammar"
      },
      {
        type: "Listening",
        title: "Números y edades",
        description: "Escucha diálogos cortos e identifica información básica.",
        duration: "8 min",
        xp: "35 XP",
        icon: "🎧",
        iconClass: "listening"
      }
    ]
  },

  A2: {
    title: "Ejercicios del nivel A2",
    description: "Actividades para fortalecer conversaciones simples, tiempos básicos y comprensión cotidiana.",
    exercises: [
      {
        type: "Lectura",
        title: "Culturas del mundo y comida",
        description: "Lee sobre costumbres y vocabulario relacionado con alimentos.",
        duration: "15 min",
        xp: "50 XP",
        icon: "📖",
        iconClass: "reading"
      },
      {
        type: "Speaking",
        title: "Conversación en una cafetería",
        description: "Practica expresiones frecuentes en una conversación cotidiana.",
        duration: "10 min",
        xp: "75 XP",
        icon: "🎤",
        iconClass: "speaking"
      },
      {
        type: "Gramática",
        title: "Past perfect tense",
        description: "Ejercicios guiados sobre estructura y uso básico.",
        duration: "20 min",
        xp: "100 XP",
        icon: "✍",
        iconClass: "grammar"
      },
      {
        type: "Listening",
        title: "Reporte del clima",
        description: "Escucha información simple y responde preguntas.",
        duration: "12 min",
        xp: "60 XP",
        icon: "🎧",
        iconClass: "listening"
      }
    ]
  },

  B1: {
    title: "Ejercicios del nivel B1",
    description: "Actividades intermedias para mejorar fluidez, comprensión y uso funcional del idioma.",
    exercises: [
      {
        type: "Lectura",
        title: "Viajes y experiencias",
        description: "Comprende textos sobre experiencias personales y viajes.",
        duration: "18 min",
        xp: "70 XP",
        icon: "📖",
        iconClass: "reading"
      },
      {
        type: "Grammar",
        title: "First conditional",
        description: "Practica estructuras para situaciones reales en el futuro.",
        duration: "16 min",
        xp: "80 XP",
        icon: "✍",
        iconClass: "grammar"
      },
      {
        type: "Listening",
        title: "Entrevista de trabajo",
        description: "Escucha una entrevista y responde preguntas de comprensión.",
        duration: "14 min",
        xp: "75 XP",
        icon: "🎧",
        iconClass: "listening"
      },
      {
        type: "Speaking",
        title: "Opiniones y argumentos",
        description: "Expresa acuerdos, desacuerdos y opiniones personales.",
        duration: "20 min",
        xp: "90 XP",
        icon: "🎤",
        iconClass: "speaking"
      }
    ]
  },

  B2: {
    title: "Ejercicios del nivel B2",
    description: "Actividades para desarrollar comunicación más precisa y comprensión de temas complejos.",
    exercises: [
      {
        type: "Lectura",
        title: "Tecnología y sociedad",
        description: "Analiza un texto más complejo y responde preguntas inferenciales.",
        duration: "22 min",
        xp: "90 XP",
        icon: "📖",
        iconClass: "reading"
      },
      {
        type: "Grammar",
        title: "Passive voice advanced",
        description: "Practica estructuras avanzadas en distintos contextos.",
        duration: "18 min",
        xp: "95 XP",
        icon: "✍",
        iconClass: "grammar"
      },
      {
        type: "Listening",
        title: "Podcast académico",
        description: "Escucha un fragmento y responde preguntas detalladas.",
        duration: "16 min",
        xp: "85 XP",
        icon: "🎧",
        iconClass: "listening"
      },
      {
        type: "Speaking",
        title: "Debate guiado",
        description: "Desarrolla argumentos más elaborados sobre un tema social.",
        duration: "20 min",
        xp: "100 XP",
        icon: "🎤",
        iconClass: "speaking"
      }
    ]
  },

  C1: {
    title: "Ejercicios del nivel C1",
    description: "Actividades avanzadas para contextos académicos, profesionales y argumentación compleja.",
    exercises: [
      {
        type: "Lectura",
        title: "Artículo académico",
        description: "Analiza ideas principales, tono y propósito del autor.",
        duration: "25 min",
        xp: "110 XP",
        icon: "📖",
        iconClass: "reading"
      },
      {
        type: "Grammar",
        title: "Inversion and emphasis",
        description: "Practica estructuras avanzadas para mayor precisión.",
        duration: "22 min",
        xp: "105 XP",
        icon: "✍",
        iconClass: "grammar"
      },
      {
        type: "Listening",
        title: "Conferencia profesional",
        description: "Escucha una charla y responde preguntas complejas.",
        duration: "20 min",
        xp: "100 XP",
        icon: "🎧",
        iconClass: "listening"
      },
      {
        type: "Speaking",
        title: "Presentación formal",
        description: "Organiza y presenta ideas de manera clara y sofisticada.",
        duration: "24 min",
        xp: "115 XP",
        icon: "🎤",
        iconClass: "speaking"
      }
    ]
  }
};

const params = new URLSearchParams(window.location.search);
const level = params.get("level") || "A2";
const currentLevelData = exercisesByLevel[level] || exercisesByLevel["A2"];

const badge = document.getElementById("current-level-badge");
const title = document.getElementById("current-level-title");
const description = document.getElementById("current-level-description");
const subtitle = document.getElementById("exercise-subtitle");
const grid = document.getElementById("exercise-grid");

badge.textContent = `Nivel ${level}`;
title.textContent = currentLevelData.title;
description.textContent = currentLevelData.description;
subtitle.textContent = `Aquí verás los ejercicios disponibles para el nivel ${level}.`;

grid.innerHTML = currentLevelData.exercises.map(exercise => `
  <article class="exercise-card">
    <div class="exercise-icon ${exercise.iconClass}">${exercise.icon}</div>

    <div class="exercise-content">
      <span class="exercise-type">${exercise.type}</span>
      <h4>${exercise.title}</h4>
      <p>${exercise.description}</p>
      <div class="exercise-meta">${exercise.duration} · ${exercise.xp}</div>
    </div>

    <button class="exercise-action">▶</button>
  </article>
`).join("");