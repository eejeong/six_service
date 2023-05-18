<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Thank you for your order!</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="/shop">Return to Shop</a></p>
        </div>
    </div>
</div>
<!-- Page Header End -->


#cartsql.xml
<delete id="afterOrder" parameterType="String">
    DELETE FROM cart WHERE cust_id=#{id}
</delete>

#CartMapper
public void afterOrder(String cid);

#CartService
public void afterOrder(String s) throws Exception {
mapper.afterOrder(s);
}

#MainController
@RequestMapping("/sales")
public String sales(Model model, Sales sales, HttpSession session) throws Exception {
salesService.register(sales);
cartService.afterOrder(세션의 cust 아이디?);
model.addAttribute("center", "orderok");
return "index";
}

인덱스에 스토어 없애기.