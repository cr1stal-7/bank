<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=utf-8" %>

<!-- Card: Transfer Card -->
<div class="card transfer-card">
    <!-- Card Body -->
    <div class="card-body">
        <!-- Transfer Form -->
        <form action="/transact/transfer" method="POST">
            <!-- Form Group -->
            <div class="form-group mb-3">
                <label>Выберите аккаунт отправителя</label>
                <!-- Select Account Option -->
                <select name="transfer_from" class="form-control">
                    <option>-- Выберите аккаунт --</option>
                    <c:if test="${userAccounts != null}">
                        <c:forEach items="${userAccounts}" var="selectAccount">
                            <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                        </c:forEach>
                    </c:if>
                </select>
                <!-- End Select Account Option -->
            </div>
            <!-- End Of Group -->
            <!-- Form Group -->
            <div class="form-group mb-3">
                <label>Выберите аккаунт получателя</label>
                <!-- Select Account Option -->
                <select name="transfer_to" class="form-control">
                    <option>-- Выберите аккаунт --</option>
                    <c:if test="${userAccounts != null}">
                        <c:forEach items="${userAccounts}" var="selectAccount">
                            <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                        </c:forEach>
                    </c:if>
                </select>
                <!-- End Select Account Option -->
            </div>
            <!-- End Of Group -->
            <!-- Form Group -->
            <div class="form-group mb-3">
                <label>Введите сумму перевода</label>
                <input type="text" name="transfer_amount" class="form-control" placeholder="Введите сумму перевода">
            </div>
            <!-- End Of Form Group -->
            <!-- Form Group -->
            <div class="form-group mb-3">
                <button class="btn btn-md transact-btn">Перевод</button>
            </div>
            <!-- End Of Form Group -->
        </form>
        <!-- End Of Transfer Form -->
    </div>
    <!-- End Of Card Body -->
</div>
<!-- End Of Card: Transfer Card -->