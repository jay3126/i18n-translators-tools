# -*- coding: utf-8 -*-
# vi: fenc=utf-8:expandtab:ts=2:sw=2:sts=2
# 
# @author: Petr Kovar <pejuko@gmail.com>
#

class TestProcessorGettext < Test::Unit::TestCase

  def setup
    __prepare(I18n::Translate::Processor::Gettext, "cze.po")
  end

  include I18n::Test::Processor

end
