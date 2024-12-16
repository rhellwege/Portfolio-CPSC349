<script>
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | TWB</title>
</svelte:head>

<div id="main" class="mx-auto">
    <h1 id="title" class="font-bold text-5xl text-center py-5">
        TalkWithBooks
    </h1>
    <div class="divider"></div>
    <br />
    <section class="">
        <img
            src="/project-previews/twb.png"
            alt="TalkWithBooks Project Preview"
            class="mx-auto"
        />
    </section>
    <div class="divider"></div>
    <section class="prose">
        <h2>Overview</h2>
        <p>
            This is a personal project that I started a few months ago. I
            recently learned about RAG's and wanted to apply them to personal
            notes and textbooks so that they can be easily retrieved and cited
            when asked questions. So far, I have only implemented the encoding
            and retrieval part along with the UI component that renders the pdf
            and highlights sections dynamically. I wanted to learn more about
            how javascript frameworks work so I decided to use SolidJS which is
            a nice compromise between simplicity and functionality.
        </p>
    </section>
    <div class="divider"></div>
    <section class="prose">
        <h2>Technical Details</h2>
        <p>
            This project is full-stack with the backend being written in Go and
            the frontend in SolidJS javascript. The backend has more layers to
            it. It has a python layer which is responsible for the encoding and
            inference of questions, and holding the encodings in a FAISS vector
            database. Potentially, there may be multiple nodes of this layer so
            to coordinate jobs I plan on using RabbitMQ or dragonflydb to listen
            and assign jobs. All of this will likely be containerized using
            docker.
        </p>
    </section>
</div>

<style>
    @font-face {
        font-family: "OldEnglish";
        src: url("/fonts/OldEnglishFive.ttf");
        font-weight: normal;
        font-style: normal;
        font-weight: 400;
    }
    section {
        padding: 20px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
    }
    img {
        max-height: 50vh;
    }
    #title {
        font-family: "OldEnglish";
    }
    #main {
        width: 70vw;
    }
</style>
