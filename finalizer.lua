local t = ...
local pl = t.pl
local strDistId = t:get_platform()

-- Copy all additional files.
t:install{
  -- Common files.
  ['local/muhkuh_cli_init.lua']                    = '${install_base}/',

  -- SPI macros.
  ['local/spi_macro_adesto_at45db321e.txt']        = '${install_base}/spi_macros/',
  ['local/spi_macro_gigadevice_gd25q32e_4bit.txt'] = '${install_base}/spi_macros/',
  ['local/spi_macro_gigadevice_gd25q64e_4bit.txt'] = '${install_base}/spi_macros/',
  ['local/spi_macro_issi_is25lp064d_4bit.txt']     = '${install_base}/spi_macros/',
  ['local/spi_macro_issi_is25lp128f_4bit.txt']     = '${install_base}/spi_macros/',
  ['local/spi_macro_macronix_mx25l12835f_4bit.txt']= '${install_base}/spi_macros/',
  ['local/spi_macro_macronix_mx25l3233f_4bit.txt'] = '${install_base}/spi_macros/',
  ['local/spi_macro_winbond_W25Q32_4bit.txt']      = '${install_base}/spi_macros/',
  ['local/spi_macro_winbond_w25Q64C_4bit.txt']     = '${install_base}/spi_macros/',


  ['${report_path}']                               = '${install_base}/.jonchki/'
}

if strDistId=='windows' then
  t:install{
    ['local/tester.lnk']                           = '${install_base}/',
  }
end

-- Move the tests.xml to tests.xml.template
pl.file.move(t:replace_template('${install_base}/tests.xml'), t:replace_template('${install_base}/tests.xml.template'))

return true
