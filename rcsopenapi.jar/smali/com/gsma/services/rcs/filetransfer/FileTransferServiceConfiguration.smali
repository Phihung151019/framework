.class public Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;
.super Ljava/lang/Object;
.source "FileTransferServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;)V
    .locals 1
    .param p1, "ftInf"    # Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    .line 126
    return-void
.end method


# virtual methods
.method public getImageResizeOption()Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getImageResizeOption() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getImageResizeOption()I

    move-result v0

    .line 276
    .local v0, "value":I
    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .local v1, "result":Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    return-object v1

    .line 278
    .end local v0    # "value":I
    .end local v1    # "result":Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMaxAudioMessageDuration()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMaxAudioMessageLength()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxAudioMessageLength()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxAudioMessageLength()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMaxAudioMessageLength()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxAudioMessageLength()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxFileTransfers()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMaxFileTransfers() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxFileTransfers()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getMaxSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getMaxSize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxSize()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWarnSize()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getWarnSize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getWarnSize()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAutoAcceptEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isAutoAcceptEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAutoAcceptInRoamingEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isAutoAcceptInRoamingEnabled() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptInRoamingEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isAutoAcceptModeChangeable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isAutoAcceptModeChangeable() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptModeChangeable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isGroupFileTransferSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isGroupFileTransferSupported() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isGroupFileTransferSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public setAutoAccept(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoAccept() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setAutoAccept(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    nop

    .line 204
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public setAutoAcceptInRoaming(Z)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAutoAcceptInRoaming()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setAutoAcceptInRoaming(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    nop

    .line 265
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public setImageResizeOption(Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;)V
    .locals 3
    .param p1, "option"    # Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setImageResizeOption() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->toInt()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setImageResizeOption(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 302
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
