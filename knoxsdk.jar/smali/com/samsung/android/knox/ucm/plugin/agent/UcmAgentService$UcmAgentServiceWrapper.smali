.class final Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;
.super Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UcmAgentServiceWrapper"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;


# direct methods
.method private constructor greylist <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor greylist <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;)V

    return-void
.end method

.method private greylist reponseUnsupportedWithBoolean()Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private greylist reponseUnsupportedWithNullBytes()Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public greylist APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist changePinWithPassword(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->changePinWithPassword(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string p2, "containsAlias. Not Supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p4, p0, p1, p3, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mdecrypt(Landroid/os/Bundle;Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mdeleteKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p4, p0, p1, p3, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mencrypt(Landroid/os/Bundle;Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist generateDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p4, :cond_0

    const-string p0, "UcmAgentService"

    const-string p1, "generateKey. params is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "callerUid"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v1, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v4

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;IIZII)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setPurpose(I)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String;

    const-string p3, ""

    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setEcCurveName(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_DIGESTS:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string p2, "extraArgs"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setOptions(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->build()Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgenerateKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgenerateKeyPair(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgenerateSecureRandom(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist generateWrappedDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgetCertificateChain(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDetailErrorMessage(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UcmAgentService"

    const-string v0, "AbstractMethodError in getDetailErrorMessage"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getInfo()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgetKeyType(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getKeyguardPinMaximumLength()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyguardPinMaximumLength()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getKeyguardPinMinimumLength()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyguardPinMinimumLength()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStatus()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mimportKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mimportKeyPair(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist installCertificateIfSupported(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p4, p0, p1, p3, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$minstallCertificateIfSupported(Landroid/os/Bundle;Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist keyAgreement(Ljava/lang/String;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p4, p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mkeyAgreement(Landroid/os/Bundle;Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist keyguardPasswordUpdated(Z)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->keyguardPasswordUpdated(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist mac(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p4, p0, p1, p3, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mmac(Landroid/os/Bundle;Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist notifyChange(ILandroid/os/Bundle;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public greylist processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string p2, "processCommand. Not Supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithNullBytes()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist resetUid(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string v0, "resetUid. Not Supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist resetUser(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string v0, "resetUser. Not Supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$msaw(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string p2, "setCertificateChain. Not Supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist setKeyguardPinMaximumLength(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setKeyguardPinMaximumLength(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist setKeyguardPinMinimumLength(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setKeyguardPinMinimumLength(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist setState(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist sign(Ljava/lang/String;[BLjava/lang/String;ZLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p5}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mencrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p5, p0, p1, p3, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$msign(Landroid/os/Bundle;Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist unwrapDek([B)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public greylist verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
