#coding: utf-8
class Test1sController < ApplicationController
  active_scaffold :test1 do |conf|
    conf.label = "Test people list"
    conf.columns = [:name,:name2, :dt, :user,:created_at,:updated_at]
    update.columns.exclude :user
    create.columns.exclude :user
    list.sorting = {:name => 'ASC'}
    columns[:name].label = "Имя :-))"
    columns[:name2].label = "Виртуальное поле имени :-))"
    columns[:dt].label = "Дата и время"
    columns[:user].label = "Имя администратора"
    columns[:created_at].label = "Дата и время создания"
    columns[:updated_at].label = "Дата и время изменения"
  end
  
  protected
  
  #Эта функция вызывается при создании записи ДО ее сохранения в БД
  #В переменной record лежит то что ты ввела при создании записи - ты можешь модифицировать данные, как хочешь
  def before_create_save record
    record.user="admin" #Установили имя одмичега :-)
    record.dt=Time.now #Жестко установили на текущее время
  end
end 