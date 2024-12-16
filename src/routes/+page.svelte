<script>
</script>

<svelte:head>
    <title>Ryan Hellwege Portfolio | Home</title>
</svelte:head>

<div id="main" class="hero bg-base-200 min-h-screen mx-auto text-lg">
    <div
        class="hero-content bg-base-300 bg-opacity-85 p-6 rounded flex-col lg:flex-row-reverse"
    >
        <img
            src="/profile.png"
            alt="profile"
            class="max-w-sm rounded-lg shadow-2xl"
        />
        <div>
            <h1 class="text-5xl font-bold">Ryan Hellwege</h1>
            <p id="bio" class="py-6">
                I am a fourth year California State University Computer Science
                student. My specialty is backend and fullstack development.
                Programmng is a passion of mine and I have been it for 9 years
                since I was 13.
            </p>
            <div class="join">
                <a href="/contact" class="btn btn-primary join-item"
                    >Get in Contact</a
                ><a href="/contact" class="btn btn-secondary join-item"
                    >More About Me</a
                >
            </div>
        </div>
    </div>
</div>

<style>
    #main {
        width: 100%;
        background-image: url("/tortise-shell.svg");
    }
    #bio {
        max-width: 600px;
    }
</style>
