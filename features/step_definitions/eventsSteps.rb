When('I click on Eventos button') do
    find(:css, '#menu-item-230 > a').click
  end
  
  When('I click on Eventos anteriores') do
    find(:css, '#tribe-events-footer > nav > ul > li > a').click
  end
  
  Then('I shoul see a list of events') do
    page.has_content? "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
    page.has_content? "WORKSHOP INFORMATIVO: Proceso de Soldadura TIG"
    page.has_content? "3er Congreso RESPONSABILIDAD SOCIAL EMPRESARIAL"
    page.has_content? 'MASTERCLASS “Transformación Digital para tu Negocio”'
  end

  When('I click on a course') do
    find(:css, '#post-212 > div.bs-tribe-events-col.bs-tribe-events-col-last > div.bs-event-heading > div.tribe-event-schedule-long > div > h2 > a').click
  end
  
  Then('I shoud see the detail of the course') do
    page.has_content? "CURSO ONLINE: PRESUPUESTO EMPRESARIAL"
  end