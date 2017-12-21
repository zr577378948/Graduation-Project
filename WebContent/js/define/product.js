/*! -v1.0 项目描述  By Linyer */
layui.use(["layer", "datatable", "datatableButton", "datatableFlash", "datatableHtml5", "datatablePrint", "datatableColVis", "datatableSelect"], function () {
    var t = layui.jquery, n = layui.layer;
    t.fn.dataTableExt.oSort["chinese-asc"] = function (t, n) {
        return t.localeCompare(n)
    }, t.fn.dataTableExt.oSort["chinese-desc"] = function (t, n) {
            return n.localeCompare(t)
    }, t.fn.dataTableExt.aTypes.push(function (t) {
        var n = /^[\u4e00-\u9fa5]{0,}$/;
        return n.test(t) ? "chinese" : null
    }), t(function () {
        var n = t("#productTable").DataTable({
            processing: !0,
            stateSave: !0,
            scrollCollapse: !0,
            paginationType: "full_numbers",
            language: lang,
            autoWidth: !1,
            lengthMenu: [10, 20, 30],
            stripeClasses: ["odd", "even"],
            searching: !0,
            paging: !0,
            lengthChange: !0,
            info: !0,
            order: [1, "desc"],
            aoColumnDefs: [{orderable: !1, aTargets: [0, 4, 8]}],
            select: {style: "multi"},
            deferRender: !0,
            ajax: "../../js/lib/json/product.json",
            columns: [{
                data: function (t) {
                    return '<input type="checkbox" name="sublist" class="fly-checkbox" data-id=' + t.id + ">"
                }, sTitle: "<input type='checkbox' class='btn-checkall fly-checkbox'>", sDefaultContent: ""
            }, {data: "id", sTitle: "ID", sDefaultContent: ""}, {
                data: "sorts",
                sTitle: "分类栏目",
                sType: "chinese",
                sDefaultContent: ""
            }, {
                data: function (t) {
                    return '<u class="btn-showarticle">' + t.title + "</u>"
                }, sTitle: "产品名称", sType: "chinese", sDefaultContent: ""
            }, {
                data: function (t) {
                    return "" == t.thumbImg ? '<img src="../../images/common/no-pic.png" layer-src="../../images/common/no-pic.png" class="pdut-thumbnail" alt="默认缩略图">' : '<img src="' + t.thumbImg + '" layer-src="' + t.thumbImg + '" class="pdut-thumbnail" alt="缩略图">'
                }
            }, {data: "describe", sType: "chinese", className: "oneline"}, {
                data: function (t) {
                    return t.unitPrice + "元"
                }
            }, {
                data: function (t) {
                    return t.status ? '<span class="label label-success radius">正常销售</span>' : '<span class="label label-default radius">暂停销售</span>'
                }, className: "td-status"
            }, {
                data: function (t) {
                    return t.status ? '<span title="暂停销售" class="handle-btn handle-btn-stop"><i class="linyer icon-zanting"></i></span><span title="编辑" class="handle-btn handle-btn-edit"><i class="linyer icon-edit"></i></span><span title="删除" class="handle-btn handle-btn-delect"><i class="linyer icon-delect"></i></span>' : '<span title="正常销售" class="handle-btn handle-btn-run"><i class="linyer icon-qiyong"></i></span><span title="编辑" class="handle-btn handle-btn-edit"><i class="linyer icon-edit"></i></span><span title="删除" class="handle-btn handle-btn-delect"><i class="linyer icon-delect"></i></span>'
                }, className: "td-handle"
            }]
        });
        t.fn.dataTable.Buttons.swfPath = "../../js/lib/dataTables/extensions/Buttons/swf/flashExport.swf", t.fn.dataTable.Buttons.defaults.dom.container.className = "tableTools-box", new t.fn.dataTable.Buttons(n, {
            buttons: [{
                extend: "colvis",
                text: "<i class='linyer icon-search'></i> <span class='hidden'>显示/隐藏列</span>",
                className: "layui-btn table-tool",
                columns: ":not(:first):not(:last)"
            }, {
                extend: "copy",
                text: "<i class='linyer icon-copy'></i> <span class='hidden'>复制到剪贴板</span>",
                className: "layui-btn table-tool"
            }, {
                extend: "csv",
                text: "<i class='linyer icon-exports'></i> <span class='hidden'>导出csv</span>",
                className: "layui-btn table-tool"
            }, {
                extend: "excel",
                text: "<i class='linyer icon-excel'></i> <span class='hidden'>导出excel</span>",
                className: "layui-btn table-tool"
            }, {
                extend: "pdf",
                text: "<i class='linyer icon-pdf'></i> <span class=''>导出pdf</span>",
                className: "layui-btn table-tool"
            }, {
                extend: "print",
                text: "<i class='linyer icon-print'></i> <span class='hidden'>打印</span>",
                className: "layui-btn table-tool",
                autoPrint: !1,
                message: "此打印是使用DataTable的打印按钮生成的!"
            }]
        }), console.log(n), n.buttons().container().appendTo(t(".tableTools"));
        var e = n.button(0).action();
        n.button(0).action(function (n, a, s, l) {
            e(n, a, s, l), 0 == t(".dt-button-collection > .dropdown-menu").length && t(".dt-button-collection").wrapInner('<ul class="dropdown-menu" />').find("a").attr("href", "javascript:;").wrap("<li />"), t(".dt-button-collection").appendTo(".tableTools-box")
        });
        var a = n.button(1).action();
        n.button(1).action(function (t, n, e, s) {
            a(t, n, e, s)
        }), n.on("select", function (e, a, s, l) {
            console.log("1"), "row" === s && t(n.row(l).node()).find("input:checkbox").prop("checked", !0)
        }), n.on("deselect", function (e, a, s, l) {
            "row" === s && t(n.row(l).node()).find("input:checkbox").prop("checked", !1)
        }), t(document).on("click", "#productTable > thead > tr > th input[type=checkbox],#productTable > tfoot > tr > th input[type=checkbox]", function () {
            var e = this.checked;
            t("#productTable").find("tbody > tr").each(function () {
                var t = this;
                e ? n.row(t).select() : n.row(t).deselect()
            })
        }), t(document).on("click", "#productTable tbody td input[type=checkbox]", function () {
            var e = t(this).closest("tr").get(0);
            this.checked ? n.row(e).select() : n.row(e).deselect()
        }), t(document).on("click", "#productTable tbody td", function () {
            t(this).closest("tr").get(0)
        })
    }), t(".btn-showuser").on("click", function () {
        var n = t(this).html(), e = "product-show.html", a = t(this).parents("tr").attr("data-userid");
        console.log(a), layer_show(n, e, a, "800", "600")
    }), t("#btn-adduser").on("click", function () {
        var n = t(this).html(), e = "product-add.html";
        layer_show(n, e, "", "800", "600")
    }), t(".table-sort").on("click", ".handle-btn-stop", function () {
        var e = t(this);
        e.parents("tr").attr("data-userid");
        n.confirm("确认要暂停销售吗？", {icon: 0, title: "警告", shade: !1}, function (a) {
            t(e).parents("tr").find(".td-handle").prepend('<span class="handle-btn handle-btn-run" title="开始销售"><i class="linyer icon-qiyong"></i></span>'), t(e).parents("tr").find(".td-status").html('<span class="label label-default radius">暂停销售</span>'), t(e).remove(), n.msg("已暂停销售!", {
                icon: 5,
                time: 1e3
            })
        })
    }), t(".table-sort").on("click", ".handle-btn-run", function () {
        var e = t(this);
        e.parents("tr").attr("data-userid");
        n.confirm("确认要开始销售吗？", {icon: 0, title: "警告", shade: !1}, function (a) {
            t(e).parents("tr").find(".td-handle").prepend('<span class="handle-btn handle-btn-stop" title="暂停销售"><i class="linyer icon-zanting"></i></span>'), t(e).parents("tr").find(".td-status").html('<span class="label label-success radius">正常销售</span>'), t(e).remove(), n.msg("已开始销售!", {
                icon: 6,
                time: 1e3
            })
        })
    }), t(".table-sort").on("click", ".handle-btn-edit", function () {
        var n = t(this), e = n.parents("tr").attr("data-userid");
        layer_show("编辑", "product-edit.html", e, "600", "500")
    }), t(".table-sort").on("click", ".handle-btn-delect", function () {
        var e = t(this);
        e.parents("tr").attr("data-userid");
        n.confirm("确认要删除吗？", {icon: 0, title: "警告", shade: !1}, function (a) {
            t(e).parents("tr").remove(), n.msg("已删除!", {icon: 1, time: 1e3})
        })
    })
});