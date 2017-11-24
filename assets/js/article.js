// loads the jquery package from node_modules
var $ = require('jquery');

/**
 * @param {element} element - whichever element contains the text that you would like to shorten
 * @param {int} length - number of characters of the new string
 * @param {string} separator - anything text to the end of the new string
 */
function truncate(element, length, separator) {
    element.each(function() {
        $(this).html($(this).html().substring(0, length)).append(separator); // number of characters
    });
}

function filterByPrice(selectedArticles) {
    var priceFrom = $('.price-sidebar .price-from').val();
    var priceTo = $('.price-sidebar .price-to').val();

    if ((priceFrom.length || priceTo.length) == 0) {
        deletePriceAfterRequest(selectedArticles);
    } else {
        selectedArticles['prices']['from'].push(priceFrom);
        selectedArticles['prices']['to'].push(priceTo);
    }
}

function deletePriceAfterRequest(selectedArticles) {
    selectedArticles['prices']['from'] = [];
    selectedArticles['prices']['to'] = [];
}

$(function () {

    var htmlText = '';
    var selectedArticles = {};
    selectedArticles['brands'] = [];
    selectedArticles['categories'] = [];
    selectedArticles['sizes'] = [];
    selectedArticles['genders'] = [];
    selectedArticles['prices'] = {};
    selectedArticles['prices']['from'] = [];
    selectedArticles['prices']['to'] = [];
    console.log(selectedArticles);

    $('#brand-sidebar').on('change', "input[type='checkbox']", function () {
        var $this = $(this);

        if ($this.prop('checked')) {
            selectedArticles['brands'].push($this.val());
        } else {
            selectedArticles['brands'] = selectedArticles['brands'].filter(function (e) {
                return e !== $this.val()
            })
        }
        console.log(selectedArticles);
    });

    $('#category-sidebar').on('change', "input[type='checkbox']", function () {
        var $this = $(this);

        if ($this.prop('checked')) {
            selectedArticles['categories'].push($this.val());
        } else {
            selectedArticles['categories'] = selectedArticles['categories'].filter(function (e) {
                return e !== $this.val()
            })
        }
        console.log(selectedArticles);
    });

    $('#size-sidebar').on('change', "input[type='checkbox']", function () {
        var $this = $(this);

        if ($this.prop('checked')) {
            selectedArticles['sizes'].push($this.val());
        } else {
            selectedArticles['sizes'] = selectedArticles['sizes'].filter(function (e) {
                return e !== $this.val()
            })
        }
        console.log(selectedArticles);
    });

    $('#gender-sidebar').on('change', "input[type='checkbox']", function () {
        var $this = $(this);

        if ($this.prop('checked')) {
            selectedArticles['genders'].push($this.val());
        } else {
            selectedArticles['genders'] = selectedArticles['genders'].filter(function (e) {
                return e !== $this.val()
            })
        }
        console.log(selectedArticles);
    });


    $('.uk-search-input').keypress(function (e) {

        /* On détecte la touche ENTER */
        if ( e.which === 13 ) {

            e.preventDefault();
            var searchValue = $.trim($(this).val());

            if (searchValue.length > 0) {

                $.ajax({
                    type: 'GET',
                    url: Routing.generate("ajax_request"),
                    data: { search: searchValue },
                    dataType: 'json'
                }).done(function (data) {
                    console.log(data);
                    htmlText = '';
                    $('.uk-text-center').children().html('');

                    if (data.length > 0) {

                        for (var key in data) {
                            htmlText += '<div class="uk-width-1-6@xl uk-width-1-5@l uk-width-1-4@m uk-width-1-3@s">';
                            htmlText += '<div class="uk-card uk-card-default uk-card-hover">';
                            htmlText += '<div class="uk-card-media-top">';
                            htmlText += '<a class="uk-button uk-button-text" href="' + Routing.generate("showOne", {id: data[key].id}) + '">';
                            htmlText += '<img src="/lafriperie/web/media/cache/article_thumb/uploads/images/articles/' + data[key].image + '">';
                            htmlText += '</a>';
                            htmlText += '</div>';
                            htmlText += '<div class="uk-card-body">';
                            htmlText += '<a class="uk-button uk-button-text" href="' + Routing.generate("showOne", {id: data[key].id}) + '">';
                            htmlText += data[key].name;
                            htmlText += '</a>';
                            htmlText += '</div>';
                            htmlText += '<div class="uk-card-footer">';
                            htmlText += '<p>' + data[key].price + ' EUR</p>';
                            htmlText += '</div>';
                            htmlText += '</div>';
                            htmlText += '</div>';
                        }

                        // console.log(htmlText);
                        $('.uk-text-center').html(htmlText);

                    } else {
                        htmlText = '<div class="unavailable">Désolé il n\'y a pas d\'articles correspondant à votre recherche.</div>';
                        $('.uk-text-center').html(htmlText);
                    }
                })
            }
        }
    });


    $('#submitFilter').click(function () {
        filterByPrice(selectedArticles);

        var json = JSON.stringify(selectedArticles);
        console.log(json);
        $.ajax({
            type: 'GET',
            url: Routing.generate("ajax_request"),
            data: { articles: JSON.stringify(selectedArticles)},
            dataType: 'json'
        }).done(function (data) {
            console.log(data);
            htmlText = '';
            $('.uk-text-center').children().html('');

            if (data.length > 0) {

                for (var key in data) {
                    htmlText += '<div class="uk-width-1-6@xl uk-width-1-5@l uk-width-1-4@m uk-width-1-3@s">';
                    htmlText += '<div class="uk-card uk-card-default uk-card-hover">';
                    htmlText += '<div class="uk-card-media-top">';
                    htmlText += '<img src="/lafriperie/web/media/cache/article_thumb/uploads/images/articles/' + data[key].image + '">';
                    htmlText += '</div>';
                    htmlText += '<div class="uk-card-body">';
                    htmlText += '<a class="uk-button uk-button-text" href="' + Routing.generate("showOne", {id: data[key].id}) + '">';
                    htmlText += data[key].name;
                    htmlText += '</a>';
                    htmlText += '</div>';
                    htmlText += '<div class="uk-card-footer">';
                    htmlText += '<p>' + data[key].price + ' EUR</p>';
                    htmlText += '</div>';
                    htmlText += '</div>';
                    htmlText += '</div>';
                }

                // console.log(htmlText);
                $('.uk-text-center').html(htmlText);

                deletePriceAfterRequest(selectedArticles);
            } else {
                htmlText = '<div class="unavailable">Désolé il n\'y a pas d\'articles correspondant à votre recherche.</div>';
                $('.uk-text-center').html(htmlText);
                deletePriceAfterRequest(selectedArticles);
            }
        })
    });

});