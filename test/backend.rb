# -*- coding: utf-8 -*-
# vi: fenc=utf-8:expandtab:ts=2:sw=2:sts=2
# 
# @author: Petr Kovar <pejuko@gmail.com>

module I18n::Test
  module Backend
    def test_0010_I18n_plugin_simple_text
      assert_equal( "Text k přeložení", I18n.t("simple.text") )
    end
  
    def test_0020_I18n_plugin_plural_text
      assert_equal( "Jedna položka", I18n.t("simple.plural", :count => 1) )
      assert_equal( "Mnoho položek", I18n.t("simple.plural", :count => 9))
    end
  
    def test_0030_I18n_plugin_interpolation
      assert_equal( "Interpolovaný text 'ahoj'", I18n.t("simple.interpolation", :var => "ahoj"))
    end
  
    def test_0040_I18n_plugin_translate_simple
      assert_equal( "Změněný jednoduchý text", I18n.t("changed.simple"))
    end
  
    def test_0050_I18n_plugin_translate_plural
      assert_equal( "Změněný plurál text", I18n.t("changed.plural", :count => 1))
      assert_equal( "Změněný plurál textů", I18n.t("changed.plural", :count => 9))
    end
  
    def test_0060_I18n_plugin_translate_interpolation
      assert_equal( "Interpolovaný změněný text 'ahoj'", I18n.t("changed.interpolation", :var => "ahoj"))
    end

    def test_0070_I18n_fallback_is_working
      assert_equal( "This text is only in default", I18n.t("missing.fallback") )
    end

    def test_0080_I18n_fallback_empty_string
      assert_equal( "Empty string", I18n.t("missing.empty") )
    end

    def test_0090_new_line
      assert_equal( "V tomto textu\nje nový řádek.", I18n.t("test.new_line") )
    end

    def test_0100_quote
      assert_equal( "Tento text obsahuje \" -- jednu uvozovku.", I18n.t("test.quote") )
    end

    def test_0110_string_key_without_dots
      assert_equal( "tady je nějaký text", I18n.t("some text there") )
    end

    def test_0120_enhanced_default_returns_default_if_translation_is_missing
      assert_equal( "this is a key", I18n.t("test.enhanced") )
    end

  end
end
