#' 规则表更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' deleteCache_rule()
deleteCache_rule<- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("Delete from rds_hrv_src_rule_voucherInput Where fnumber in(select fnumber from rds_hrv_src_rule_voucher)")

  res=tsda::sql_delete2(token = token,sql_str = sql)
  return(res)
}
#' 规则表更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' insertCache_rule()
insertCache_rule <- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("Insert into rds_hrv_src_rule_voucher
    Select * from rds_hrv_src_rule_voucherInput ")

  res=tsda::sql_insert2(token = token,sql_str = sql)
  return(res)

}

#' 规则表更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' deleteAllcache_rule()
deleteAllcache_rule <- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("truncate table rds_hrv_src_rule_voucherInput ")
  res=tsda::sql_delete2(token = token,sql_str = sql)
  return(res)


}
