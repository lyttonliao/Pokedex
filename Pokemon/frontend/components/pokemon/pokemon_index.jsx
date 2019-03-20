import React from 'react';

class PokemonIndex extends React.Component {


    componentDidMount() {
        this.props.requestAllPokemon();
    }

    render() {
        const lis = this.props.pokemon.map(poke => {
            return <li key = {poke.id}>
                {poke.name}
                <img src={poke.image_url}/>
            </li>
        });
        return <ul>
            {lis}
        </ul>
    }
}

export default PokemonIndex