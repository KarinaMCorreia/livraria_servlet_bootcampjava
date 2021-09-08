package br.com.alura.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.alura.modelo.Autor;

public class autoresDao {

	private Connection conexao;

	public autoresDao(Connection conexao) {

		this.conexao = conexao;
	}

	public void Cadastrar(Autor autor) {

		try {

			String Sql = ("insert into autores (nome, email, dataNascimento, curriculo) value (?,?,?,?)");

			PreparedStatement ps = conexao.prepareStatement(Sql);

			ps.setString(1, autor.getNome());
			ps.setString(2, autor.getEmail());
			ps.setDate(3, Date.valueOf(autor.getDataNascimento()));
			ps.setString(4, autor.getCurriculo());

			ps.execute();

		} catch (Exception e) {

			throw new RuntimeException(e);
		}

	}

	public List<Autor> Listar() {

		try {

			String Sql = ("select * from autores");
			PreparedStatement ps = conexao.prepareStatement(Sql);
			ResultSet rs = ps.executeQuery();

			List<Autor> autores = new ArrayList<>();

			while (rs.next()) {

				Autor autor = new Autor(
						rs.getString("nome"), 
						rs.getString("email"),
						rs.getDate("dataNascimento").toLocalDate(), 
						rs.getString("curriculo"));

				        autores.add(autor);

			}

			return autores;

		} catch (Exception e) {

			throw new RuntimeException(e);
		}

	}
}
