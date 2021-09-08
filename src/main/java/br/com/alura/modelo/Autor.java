package br.com.alura.modelo;

import java.time.LocalDate;

public class Autor {

	private int id;
	private String nome;
	private String email;
	private LocalDate dataNascimento;
	private String curriculo;

	@Override
	public String toString() {
		return "Autor [nome=" + nome + ", email=" + email + ", dataNascimento=" + dataNascimento + ", curriculo="
				+ curriculo + "]";
	}

	public Autor(String nome, String email, LocalDate dataNascimento, String curriculo) {

		this.nome = nome;
		this.email = email;
		this.dataNascimento = dataNascimento;
		this.curriculo = curriculo;
	}

	public Autor(int int1, String string, String string2, LocalDate localDate, String string3) {

	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public LocalDate getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(LocalDate dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getCurriculo() {
		return curriculo;
	}

	public void setCurriculo(String curriculo) {
		this.curriculo = curriculo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
