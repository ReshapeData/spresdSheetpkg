#' 核算维度_重分类更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' deleteCache_acctreclass()
deleteCache_acctreclass<- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("Delete from rds_hrv_src_md_acctreclassInput Where fnumber in(select fnumber from rds_hrv_src_md_acctreclass)")

  res=tsda::sql_delete2(token = token,sql_str = sql)
  return(res)
}
#' 核算维度_重分类更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' insertCache_acctreclass()
insertCache_acctreclass <- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("Insert into rds_hrv_src_md_acctreclass
    Select * from rds_hrv_src_md_acctreclassInput ")

  res=tsda::sql_insert2(token = token,sql_str = sql)
  return(res)

}

#' 核算维度_重分类更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' deleteAllcache_acctreclass()
deleteAllcache_acctreclass <- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("truncate table rds_hrv_src_md_acctreclassInput ")
  res=tsda::sql_delete2(token = token,sql_str = sql)
  return(res)


}
