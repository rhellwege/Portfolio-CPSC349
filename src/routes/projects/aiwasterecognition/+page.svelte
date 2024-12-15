<script>
    import BrowserDemo from "$lib/components/browserdemo/BrowserDemo.svelte";
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | AI Waste Recognition</title>
</svelte:head>

<div id="main" class="mx-auto text-lg text-center">
    <h1 id="title" class="font-bold text-5xl text-center py-5">
        AI Waste Recognition
    </h1>
    <div class="divider"></div>
    <section class="">
        <BrowserDemo
            title="AI Waste Recognition Demo "
            link="https://ai.rhellwege.xyz"
            width={800}
            height={800}
            ><a target="_blank" href="https://ai.rhellwege.xyz" class="link"
                >https://ai.rhellwege.xyz</a
            ></BrowserDemo
        >
    </section>
    <div class="divider"></div>
    <section class="">
        <h2 class="font-bold text-2xl mb-2">Overview</h2>
        <p>
            This project was for my Software Engineering class at CSUF (CPSC
            362). The purpose of this project was to utilize the agile framework
            to collaborate with teammates and create a functioning project. Our
            team decided to create an AI classifier. I decided to train my own
            classifier from scratch and make it interactive so people can see
            what the weights look like and also feed it their own images to
            either classify or live train.
        </p>
    </section>
    <div class="divider"></div>
    <section class="">
        <h2 class="font-bold text-2xl mb-2">How to Use</h2>
        <p>
            I made sure the UI was as simple as possible. The left window shows
            how well the model performs on training data and the right side is
            the user controls. You start by uploading a picture by pressing the
            choose file button. Then, the server will feed the image to the
            model and send back the results. It will respond with a percentage
            and what it thinks the image contains. After this, you have the
            choice to correct the model. You can set the learning rate yourself,
            but if you set it too high, it will make the model perform worse.
        </p>
    </section>
    <div class="divider"></div>
    <section class="">
        <h2 class="font-bold text-2xl mb-2">Technical Details</h2>
        <p>
            In order to implement the model I used pytorch. Since I wanted the
            model to be made from scratch, I had to come up with the
            architecture myself. I used a simple CNN as a starting point. I got
            the training data from kaggle and experimented with different
            parameters. It took me a while to find the right parameters since I
            was training everything from my laptop with a semi-decent graphics
            card. Once I found the right model, I saved it then proceeded to set
            up the server. I decided to dockerize the app because pytorch is
            hard to set up on local machines. It is also nice to containerize
            because now I can deploy the app from wherever I want.
        </p>
    </section>
    <div class="divider"></div>
</div>

<style>
    @font-face {
        font-family: "Bokor";
        src: url("/fonts/Bokor-Regular.ttf");
        font-weight: normal;
        font-style: normal;
        font-weight: 400;
    }
    #title {
        font-family: "Bokor";
    }
    #main {
        width: 70vw;
    }
</style>
