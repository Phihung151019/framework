.class public Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "ProtectedCommand.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    const/16 v0, 0xa2

    :try_start_0
    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->addATCommands()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method protected blacklist addATCommands()V
    .locals 11

    const-string v0, "AT+ENGMODES=8,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ENGMODES=8,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AKSEEDNO=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AKSEEDNO=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTIDTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPRMTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=1,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,6,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DTCPTEST=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETHERNET=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETHERNET=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEICERT=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v1, "AT+IMEICERT=2,*"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=1,3"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,1,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,2,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,3,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,4,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,5,*"

    iget v2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v2, "AT+IMEITEST=2,*"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v3, "AT+IMEITEST=3,*"

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v4, "AT+IMEITEST=4,*"

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEITEST=5,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKCODE=0,0"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=1,0,0"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=1,2,0"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,0,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,1,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,2,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=0,0,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=0,1,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=1,0,0"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=2,0,*"

    iget v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v5, "AT+MSLSECUR=2,*"

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SECUREOS=2,0,*"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SERIALNO=2,*"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIMLOCKU=0,0,0"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIIDRW=2,*"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DETALOCK=1,0"

    iget v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v6, "AT+DETALOCK=2,*"

    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v7, "AT+LVOFLOCK=1,*"

    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAUNCH_PKG=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_IMAGE=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_VIDEO=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEMERASE=0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SDSCRIPT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCTEST=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRMTEST=0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PAYMT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PAYSTART=1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSTTON"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSTOFF"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCTON"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCOFF"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCTEST=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AEAS=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=3"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RDSMSG"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASKPEDOCOUNT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASK_YUDO_RUNCOUNT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASK_AK_DONG_RUNCOUNT=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCREENTURNON=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBJECTOUCH=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBJECTDOUBLETOUCH=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TOUCHXY=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MAKEDUMPFILE=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETENGLISH=1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=1,2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FPSENSOR=1,3,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=1,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,6"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,7"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFNVCHKS=1,0,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KEY=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KEYHOLD=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,1,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,1,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,2,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,0,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,0,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,0,2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,1,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,1,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,1,1,2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,0,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,1,1,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,1,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=2,0,1,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=2,0,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,9,2,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=6,0,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,3,9,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,3,2,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,2,0,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,2,0,2"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,3,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,5,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,6,0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,6,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=1,0,0,3"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,4,0,*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WHO=*"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATQ0V1E0"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATE0Q0V1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSLSECUR=1,1"

    iget v8, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v8}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v8, "AT+MSLSECUR=3,*"

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,7,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DTCPTEST=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,6,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,7,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPRMTEST=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FPSENSOR=1,4,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FPSENSOR=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,6,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,7,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,8,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v9, "AT+LOOPTEST=0,9,*"

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v9, "AT+LOOPTEST=3,3,*"

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,4"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,5"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,6"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,9"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,3,8"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FUNCTEST=0,1"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RGBPDISP=0,1,0,*"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FIRMVERS=3,2,7"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FIRMVERS=3,3,7"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=1,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HEADINFO=1,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FUNCTEST=0,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,1"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,0,9"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,1,1"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,1,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,0,8"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,8"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=3,12"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCODEE=0,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCODEE=0,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CONNTEST=3,0,2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,5,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,2,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ACTIVEID=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=1,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=0,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=0,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=1,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=5,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=1,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=1,A"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ALERTDIS=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ALERTDIS=0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VERSNAME=1,1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VERSNAME=1,3,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LDUCCSUM=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PDPBACKU=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PDPBACKU=0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PDPBACKU=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=1,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=0,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=0,2,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=1,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ISOSECHW=0,3,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,6,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=0,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWIZSKIP=1,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TESTAPKU=1,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,3,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFNVCHKS=0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,0,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LDUCCSUM=1,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    const-string v9, "AT+UWBDTEST=0,0,8,*"

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=1,1"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=4,5"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=7,*"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=4,6"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=10,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=10,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=10,3"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=2,7"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=2,5"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=2,6"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFNVCHKS=1,0,2"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=0,7"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=0,8"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSSCHECK=0,0,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSSCHECK=1,0,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMTEST=0,3,2,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMTEST=0,2,2,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMTEST=0,1,4,*"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMTEST=0,3,1,0"

    iget v10, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v10}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,3,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,5,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,6,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,1,3,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,0,4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,4,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=2,0,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=1,0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=1,0,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=2,0,2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=1,0,3,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=2,0,4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=1,0,4,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SVCAINIT=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SVCAINIT=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=4,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=3,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=2,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=2,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SELFTEST=3,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BOOTMODE=0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BOOTMODE=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GEOMAGSS=3,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EGMC=1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EFUN=0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESUO=4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+QUESTCHK=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PMICTEST=0,1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=1,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=2,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,10"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,11"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,12"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,13"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=2,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=2,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=5,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=4,12"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,8"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=1,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RSTCOUNT=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HAICTEST=4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HAICTEST=5,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=1,0,0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,0,0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,0,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,1,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,1,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,2,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,2,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,2,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,2,3,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,1,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UWBDTEST=0,1,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTEICODE=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IRTEMPSC=0,1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IRTEMPSC=0,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IRTEMPSC=0,1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IRTEMPSC=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=6,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=6,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,A"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,1,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,0,5,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=0,2,2,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,4,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_OIS"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_PARAMETER_READ"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ_1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,0,1,MULTICAL_READ_2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=5,2,0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,0,8,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=1,1,4,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=0,0,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,3,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,3,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,3,0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,3,0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=0,0,2,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LANGUSET=0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=1,3,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=0,4,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=0,5,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTIDTEST=3,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTIDTEST=1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NETMODEC=1,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NETMODEC=1,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIDEBG=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIDEBG=0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIDEBG=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SQTPACHK=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACTOLOG=0,6,1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FAILHIST=2,1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DVFSCTRL=0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DVFSCTRL=0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,6,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,6,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,8,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,9,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AUTHEKEY=0,0,0 "

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESIMBIND=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESIMBIND=1,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ESIMBIND=1,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEMTEST=1,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFITEST=0,9,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FRPUNLCK=3,0,1"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,0,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,5"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,6"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=0,5,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,3,9"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,3,10"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,3,11"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,3,12"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMINFO=3,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMINFO=8,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMINFO=1,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACMINFO=9,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=1,0,2,4"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DCICTEST=0,3"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+USBMODEC=1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+USBMODEC=2,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSPPTEST=0,6,7"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BAROMETE=0,1,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BAROMETE=1,2,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BAROMETE=0,0,0"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHARGEIC=0,0,2,2"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSLSECUR=0,*"

    iget v9, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v9}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFBYCODE=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPLDUCFG=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BLOBSIGN=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SSUCONFG=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SSUCONFG=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TFSTATUS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->cmdType:I

    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommand;->putAtCommands(Ljava/lang/String;I)V

    return-void
.end method
