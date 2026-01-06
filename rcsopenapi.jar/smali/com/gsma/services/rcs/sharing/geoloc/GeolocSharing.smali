.class public Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
.super Ljava/lang/Object;
.source "GeolocSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;,
        Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    }
.end annotation


# instance fields
.field private mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
    .locals 0
    .param p1, "sharingInf"    # Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    .line 274
    return-void
.end method


# virtual methods
.method public abortSharing()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->abortSharing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    nop

    .line 406
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->acceptInvitation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    nop

    .line 382
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getDirection()I

    move-result v0

    .line 346
    .local v0, "direction":I
    invoke-static {}, Lcom/gsma/services/rcs/RcsService$Direction;->values()[Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 347
    .local v4, "value":Lcom/gsma/services/rcs/RcsService$Direction;
    invoke-virtual {v4}, Lcom/gsma/services/rcs/RcsService$Direction;->ordinal()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 348
    return-object v4

    .line 346
    .end local v4    # "value":Lcom/gsma/services/rcs/RcsService$Direction;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    :cond_1
    sget-object v1, Lcom/gsma/services/rcs/RcsService$Direction;->IRRELEVANT:Lcom/gsma/services/rcs/RcsService$Direction;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 351
    .end local v0    # "direction":I
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGeoloc()Lcom/gsma/services/rcs/Geoloc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getGeoloc()Lcom/gsma/services/rcs/Geoloc;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getReasonCode()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSharingId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getSharingId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getState()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTimestamp()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getTimeStamp()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->rejectInvitation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    nop

    .line 394
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
