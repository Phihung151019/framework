.class Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ddar/DualDarClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualDARClientAgentService"
.end annotation


# instance fields
.field private greylist mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;


# direct methods
.method private constructor greylist <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    return-void
.end method

.method public synthetic constructor greylist <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    return-void
.end method


# virtual methods
.method public greylist onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string p1, "dual_dar_response"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "ORIGINATING_SECURE_CLIENT_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "CLEAR_RESET_PASSWORD_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "ON_PASSWORD2_AUTH"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "ON_BRINGUP"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_3
    const-string v3, "ON_DEVICE_OWNER_PROVISIONING"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_1

    :sswitch_4
    const-string v3, "ON_WORKSPACE_CREATION"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v3, "ON_DATA_LOCK_STATE_CHANGE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    goto :goto_1

    :sswitch_6
    const-string v3, "RESET_PASSWORD_WITH_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_1

    :sswitch_7
    const-string v3, "IS_SUPPORTED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto :goto_1

    :sswitch_8
    const-string v3, "ON_PASSWORD2_CHANGE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_9
    const-string v3, "SET_RESET_PASSWORD_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_a
    const-string v3, "ON_WORKSPACE_DESTROY"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move p2, v5

    :goto_1
    const-string v3, "RESET_PASSWORD_TOKEN"

    const-string v6, "NEW_PASSWORD"

    const-string v7, "EXISTING_PASSWORD"

    const-string v8, "RESET_PASSWORD_TOKEN_HANDLE"

    const-string v9, "user_id"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_1
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "is_data_locked"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDataLockStateChange(IZ)V

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_1
    const-string p2, "FEATURE"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->isSupported(I)Z

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_2
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object p2, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v5

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object p2, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onResetPasswordWithToken(I[BJ[B)Z

    move-result p0

    invoke-static {v5}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-static {v8}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_3
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClearResetPasswordToken(IJ)V

    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_4
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object p2, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v5

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object p2, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v8

    iget-object v3, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onSetResetPasswordToken(I[BJ[B)Z

    move-result p0

    invoke-static {v5}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-static {v8}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_5
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v4, v0, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, v3, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordChange(I[B[B)Z

    move-result p0

    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_6
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v3, v0, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordAuth(I[B)Z

    move-result p0

    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_7
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARDestroyForUser(I)Z

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_8
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARSetupForUser(I)Z

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1

    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClientBringup()Z

    move-result p0

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :goto_2
    const-string p2, "DualDarClientManager"

    const-string p3, "Failed to decrypt function params or complete the function invocation"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6b189c50 -> :sswitch_a
        -0x5bcb73de -> :sswitch_9
        -0x43c5e5a8 -> :sswitch_8
        -0x3c070447 -> :sswitch_7
        -0x40f8dcc -> :sswitch_6
        0x156556dd -> :sswitch_5
        0x36e621c9 -> :sswitch_4
        0x481c6342 -> :sswitch_3
        0x4f85492d -> :sswitch_2
        0x54a37250 -> :sswitch_1
        0x60847f17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
