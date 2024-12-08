<script>
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | Contact</title>
</svelte:head>

<div id="main" class="mx-auto">
    <h1 id="title" class="font-bold text-3xl text-center py-5">Contact Me</h1>
    <br />
    <br />
    <div class="flex flex-col md:flex-row justify-evenly gap-5">
        <a
            class="flex-1 border-2 border-black bg-white p-6 rounded"
            href="https://www.linkedin.com/in/ryan-hellwege-461b79289/"
        >
            <img src="/icons/linkedin.svg" alt="" />
            <h2 class="font-bold text-lg">
                Linkedin: <span class="link"
                    >https://www.linkedin.com/in/ryan-hellwege-461b79289/</span
                >
            </h2>
        </a>
        <a
            class="flex-1 border-2 border-black bg-white p-6 rounded"
            href="https://github.com/rhellwege"
        >
            <img src="/icons/github.svg" alt="" />
            <h2 class="font-bold text-lg">
                Linkedin: <span class="link">https://github.com/rhellwege</span>
            </h2>
        </a>
    </div>
    <br />
    <br />
    <div class="form-container">
        <h2 class="font-bold text-lg">
            Send me an email to rhellwege6@gmail.com
        </h2>
        <br />
        <form action="https://formspree.io/f/xnnqypny" method="POST">
            <label>
                Your email:
                <input
                    type="email"
                    name="email"
                    class="input input-bordered w-full max-w-xs"
                />
            </label>
            <label>
                Your message:
                <textarea name="message" class="textarea textarea-bordered"
                ></textarea>
            </label>
            <button type="submit" class="btn btn-accent">Send</button>
        </form>
    </div>
</div>

<style>
    #main {
        width: 70vw;
    }

    .form-container {
        background-color: #f9f9f9;
        border-radius: 15px;
        padding: 20px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        max-width: 500px;
        margin: 0 auto;
    }

    label {
        display: block; /* Make labels block elements */
        margin-bottom: 10px; /* Space between labels */
    }

    input,
    textarea {
        width: 100%; /* Full width for inputs and textareas */
        margin-bottom: 15px; /* Space below inputs */
        border-radius: 5px; /* Rounded corners for inputs */
        border: 1px solid #ccc; /* Border color */
        padding: 10px; /* Padding inside inputs */
    }

    button {
        width: 100%; /* Full width for button */
        padding: 10px; /* Padding inside button */
        border-radius: 5px; /* Rounded corners for button */
    }
</style>
