.class public Lcom/sec/ims/CmcManager;
.super Ljava/lang/Object;
.source "CmcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/CmcManager$ConnectionListener;,
        Lcom/sec/ims/CmcManager$CmcServiceConnection;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_IMSSERVICE_CLASS:Ljava/lang/String; = "com.sec.internal.ims.imsservice.ImsService"

.field private static final INTENT_ACTION_IMSSERVICE_PACKAGE:Ljava/lang/String; = "com.sec.imsservice"

.field static final LOG_TAG:Ljava/lang/String; = "CmcManager"

.field private static final SERVICE_NAME:Ljava/lang/String; = "secims"


# instance fields
.field private final mCmcCallEventListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/cmc/ICmcCallEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmcDialogListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/cmc/ICmcDialogListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmcRegListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmcServiceConnection:Lcom/sec/ims/CmcManager$CmcServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/ims/CmcManager$ConnectionListener;

.field private mPhoneId:I


# direct methods
.method static bridge synthetic -$$Nest$monConnectService(Lcom/sec/ims/CmcManager;Lcom/sec/ims/IImsService;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/CmcManager;->onConnectService(Lcom/sec/ims/IImsService;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDisconnectService(Lcom/sec/ims/CmcManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->onDisconnectService()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sec/ims/CmcManager;->mListener:Lcom/sec/ims/CmcManager$ConnectionListener;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    .line 36
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 37
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcCallEventListeners:Landroid/util/ArrayMap;

    .line 38
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcDialogListeners:Landroid/util/ArrayMap;

    .line 117
    new-instance v1, Lcom/sec/ims/CmcManager$CmcServiceConnection;

    invoke-direct {v1, p0, v0}, Lcom/sec/ims/CmcManager$CmcServiceConnection;-><init>(Lcom/sec/ims/CmcManager;Lcom/sec/ims/CmcManager-IA;)V

    iput-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcServiceConnection:Lcom/sec/ims/CmcManager$CmcServiceConnection;

    .line 63
    iput-object v0, p0, Lcom/sec/ims/CmcManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/sec/ims/CmcManager;->mListener:Lcom/sec/ims/CmcManager$ConnectionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/CmcManager$ConnectionListener;I)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sec/ims/CmcManager;->mListener:Lcom/sec/ims/CmcManager$ConnectionListener;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    .line 36
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 37
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcCallEventListeners:Landroid/util/ArrayMap;

    .line 38
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcDialogListeners:Landroid/util/ArrayMap;

    .line 117
    new-instance v1, Lcom/sec/ims/CmcManager$CmcServiceConnection;

    invoke-direct {v1, p0, v0}, Lcom/sec/ims/CmcManager$CmcServiceConnection;-><init>(Lcom/sec/ims/CmcManager;Lcom/sec/ims/CmcManager-IA;)V

    iput-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcServiceConnection:Lcom/sec/ims/CmcManager$CmcServiceConnection;

    .line 90
    iput-object p1, p0, Lcom/sec/ims/CmcManager;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/sec/ims/CmcManager;->mListener:Lcom/sec/ims/CmcManager$ConnectionListener;

    .line 92
    iput p3, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    return-void
.end method

.method private bindImsService()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mContext:Landroid/content/Context;

    const-string v1, "CmcManager"

    if-nez v0, :cond_0

    .line 105
    const-string p0, "bind imsservice failed. context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindImsService bind:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/CmcManager;->mCmcServiceConnection:Lcom/sec/ims/CmcManager$CmcServiceConnection;

    invoke-virtual {v2}, Lcom/sec/ims/CmcManager$CmcServiceConnection;->getBind()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.ImsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/sec/ims/CmcManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/ims/CmcManager;->mCmcServiceConnection:Lcom/sec/ims/CmcManager$CmcServiceConnection;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 0

    .line 461
    invoke-static {}, Lcom/sec/ims/cmc/CmcCallCmdResult;->getBuilder()Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;

    move-result-object p0

    .line 462
    invoke-virtual {p0, p1}, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;->setCallId(I)Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;

    move-result-object p0

    .line 463
    invoke-virtual {p0, p2}, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;->setCmdResult(I)Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;

    move-result-object p0

    .line 464
    invoke-virtual {p0}, Lcom/sec/ims/cmc/CmcCallCmdResult$Builder;->build()Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0
.end method

.method private getImsService()Lcom/sec/ims/IImsService;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcServiceConnection:Lcom/sec/ims/CmcManager$CmcServiceConnection;

    invoke-virtual {v0}, Lcom/sec/ims/CmcManager$CmcServiceConnection;->getService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "secims"

    invoke-direct {p0, v0}, Lcom/sec/ims/CmcManager;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;

    move-result-object p0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    return-object v0
.end method

.method private getSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    const/4 p0, 0x0

    .line 160
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    const-string v2, "CmcManager"

    if-eqz v1, :cond_1

    .line 163
    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    check-cast v0, Landroid/os/IBinder;

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to getService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 171
    :cond_1
    const-string p1, "Failed to reflect method getService"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 180
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    .line 178
    :goto_1
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    .line 176
    :goto_2
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    .line 174
    :goto_3
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_4
    return-object p0
.end method

.method private onConnectService(Lcom/sec/ims/IImsService;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mListener:Lcom/sec/ims/CmcManager$ConnectionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lcom/sec/ims/CmcManager;->registerPreviousListeners(Lcom/sec/ims/IImsService;)V

    .line 188
    iget-object p0, p0, Lcom/sec/ims/CmcManager;->mListener:Lcom/sec/ims/CmcManager$ConnectionListener;

    invoke-interface {p0}, Lcom/sec/ims/CmcManager$ConnectionListener;->onConnected()V

    :cond_0
    return-void
.end method

.method private onDisconnectService()V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sec/ims/CmcManager;->mListener:Lcom/sec/ims/CmcManager$ConnectionListener;

    if-eqz p0, :cond_0

    .line 194
    invoke-interface {p0}, Lcom/sec/ims/CmcManager$ConnectionListener;->onDisconnected()V

    :cond_0
    return-void
.end method

.method private registerPreviousListeners(Lcom/sec/ims/IImsService;)V
    .locals 4

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    const-string v0, "CmcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPreviousListeners:  mCmcRegListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/CmcManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 201
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCmcCallEventListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/CmcManager;->mCmcCallEventListeners:Landroid/util/ArrayMap;

    .line 202
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCmcDialogListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/CmcManager;->mCmcDialogListeners:Landroid/util/ArrayMap;

    .line 203
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IImsRegistrationListener;

    .line 207
    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/sec/ims/CmcManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcCallEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/cmc/ICmcCallEventListener;

    .line 213
    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {p1, v2, v1}, Lcom/sec/ims/IImsService;->registerCmcCallEventListenerForSlot(ILcom/sec/ims/cmc/ICmcCallEventListener;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/sec/ims/CmcManager;->mCmcCallEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/cmc/ICmcDialogListener;

    .line 219
    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {p1, v2, v1}, Lcom/sec/ims/IImsService;->registerCmcDialogListenerByToken(ILcom/sec/ims/cmc/ICmcDialogListener;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 221
    iget-object v3, p0, Lcom/sec/ims/CmcManager;->mCmcDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 225
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 227
    :cond_5
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public cmcAnswerCall(I)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcAnswerCall callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 493
    invoke-direct {p0, p1, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 495
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->cmcAnswerCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 497
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcEndCall(I)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 1

    const/16 v0, 0x1a

    .line 503
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/CmcManager;->cmcEndCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0
.end method

.method public cmcEndCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcEndCall callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " endReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not initialized."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    .line 511
    invoke-direct {p0, p1, p2}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 514
    invoke-direct {p0, p1, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 516
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/IImsService;->cmcEndCall(III)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 518
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcHoldCall(I)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcHoldCall callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 566
    invoke-direct {p0, p1, v0}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 569
    invoke-direct {p0, p1, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 571
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->cmcHoldCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 573
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcMakeCall(Ljava/lang/String;Lcom/sec/ims/cmc/CmcCallCmdInfo;)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcMakeCall callee : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not initialized."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 473
    invoke-direct {p0, v3, p1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 476
    invoke-direct {p0, v3, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 478
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/IImsService;->cmcMakeCall(ILjava/lang/String;Lcom/sec/ims/cmc/CmcCallCmdInfo;)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 480
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcPullCall(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcPullCall dialogId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not initialized."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 549
    invoke-direct {p0, v3, p1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 552
    invoke-direct {p0, v3, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 554
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->cmcPullCall(ILjava/lang/String;)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 556
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcRejectCall(I)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 1

    const/4 v0, 0x3

    .line 524
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/CmcManager;->cmcRejectCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0
.end method

.method public cmcRejectCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcRejectCall callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rejectReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not initialized."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    .line 532
    invoke-direct {p0, p1, p2}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 535
    invoke-direct {p0, p1, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 537
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/IImsService;->cmcRejectCall(III)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 539
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcResumeCall(I)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcResumeCall callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 583
    invoke-direct {p0, p1, v0}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 586
    invoke-direct {p0, p1, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 588
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->cmcResumeCall(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 590
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcSendDtmf(IC)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcSendDtmf callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not initialized."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 603
    invoke-direct {p0, p1, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 605
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/IImsService;->cmcSendDtmf(IIC)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 607
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcStartDtmf(IC)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcStartDtmf callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 616
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not initialized."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x3

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 620
    invoke-direct {p0, p1, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 622
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/IImsService;->cmcStartDtmf(IIC)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 624
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public cmcStopDtmf(I)Lcom/sec/ims/cmc/CmcCallCmdResult;
    .locals 5

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcStopDtmf callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 634
    invoke-direct {p0, p1, v0}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 637
    invoke-direct {p0, p1, v1}, Lcom/sec/ims/CmcManager;->getCmcCallCmdResult(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object v1

    .line 639
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->cmcStopDtmf(II)Lcom/sec/ims/cmc/CmcCallCmdResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 641
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public connectService()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->bindImsService()V

    return-void
.end method

.method public isCmcEmergencyCallSupported()Z
    .locals 3

    .line 396
    const-string v0, "isCmcEmergencyCallSupported"

    const-string v1, "CmcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 399
    const-string p0, "isCmcEmergencyCallSupported: Not initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 404
    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->isCmcEmergencyCallSupported(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 406
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isCmcEmergencyNumber(Ljava/lang/String;)Z
    .locals 3

    .line 419
    const-string v0, "isCmcEmergencyNumber"

    const-string v1, "CmcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 422
    const-string p0, "isCmcEmergencyNumber: Not initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 427
    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->isCmcEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 429
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 3

    .line 444
    const-string v0, "isCmcPotentialEmergencyNumber"

    const-string v1, "CmcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 447
    const-string p0, "isCmcPotentialEmergencyNumber: Not initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 452
    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 454
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public declared-synchronized registerCmcCallEventListener(Lcom/sec/ims/cmc/ICmcCallEventListener;)V
    .locals 2

    monitor-enter p0

    .line 289
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerCmcCallEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 294
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcCallEventListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 301
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->registerCmcCallEventListenerForSlot(ILcom/sec/ims/cmc/ICmcCallEventListener;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcCallEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerCmcDialogListener(Lcom/sec/ims/cmc/ICmcDialogListener;)V
    .locals 2

    monitor-enter p0

    .line 340
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerCmcDialogListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 345
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcDialogListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 353
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->registerCmcDialogListenerByToken(ILcom/sec/ims/cmc/ICmcDialogListener;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 358
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerCmcRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2

    monitor-enter p0

    .line 241
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerCmcRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 246
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 253
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/sec/ims/CmcManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized unregisterCmcCallEventListener(Lcom/sec/ims/cmc/ICmcCallEventListener;)V
    .locals 2

    monitor-enter p0

    .line 311
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterCmcCallEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 316
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcCallEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 318
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->unregisterCmcCallEventListenerForSlot(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 326
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    :cond_2
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not initialized or token null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized unregisterCmcDialogListener(Lcom/sec/ims/cmc/ICmcDialogListener;)V
    .locals 2

    monitor-enter p0

    .line 370
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterCmcDialogListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 375
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 377
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 384
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->unregisterCmcDialogListenerByToken(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 386
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    :goto_0
    monitor-exit p0

    return-void

    .line 379
    :cond_2
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not initialized or token null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized unregisterCmcRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2

    monitor-enter p0

    .line 269
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterCmcRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 274
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/ims/CmcManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Lcom/sec/ims/CmcManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 282
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    :goto_0
    monitor-exit p0

    return-void

    .line 278
    :cond_2
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CmcManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/CmcManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not initialized or token null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method
