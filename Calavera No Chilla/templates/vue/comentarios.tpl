{literal}
<section id="vue-comentarios">
    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h4 class="mb-0">Calavera No Chilla</h4>
            <button id="btn-refresh" type="button" class="btn btn-primary btn-sm">Refresh</button>
        </div>

        <div v-if="loading" class="card-body">
            Cargando...
        </div>

        <ul v-if="!loading" class="list-group list-group-flush">
            <a v-for="comentario in comentarios" class="list-group-item list-group-item-action"> 
                {{ comentario.comentario }}
                {{comentario.puntaje}}
                <button type="button" v-on:click="(event)=>{eliminar(event,comentario.id_comentario)}">Eliminar</button>
            </a>

        </ul>

        <div class="card-footer text-muted">
            {{ titulo }}
        </div>
    </div>
        
</section>
{/literal}