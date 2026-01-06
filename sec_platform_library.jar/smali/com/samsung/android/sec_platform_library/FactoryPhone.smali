.class public Lcom/samsung/android/sec_platform_library/FactoryPhone;
.super Ljava/lang/Object;
.source "FactoryPhone.java"


# static fields
.field private static final BASE_ID:I = 0x3e8


# instance fields
.field private BIND_CLASS_NAME:Ljava/lang/String;

.field private HOST_NAME:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mDummyHandler:Landroid/os/Handler;

.field private mPendingMessage:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$fgetHOST_NAME(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/samsung/android/sec_platform_library/FactoryPhone;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 26
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 32
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 47
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "idxRil"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 26
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 32
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 47
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 90
    invoke-direct {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->setMultiRilSupport(I)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recv"    # Landroid/content/BroadcastReceiver;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "F_PHONE"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 26
    const-string v0, "com.sec.phone.SecPhoneService"

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    .line 32
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone$1;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 47
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone$2;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService(Landroid/content/BroadcastReceiver;)V

    .line 71
    return-void
.end method

.method private _insertActionIntoMap(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 136
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_invokeOemRilRequestRaw([BLandroid/os/Message;Z)V

    .line 137
    return-void
.end method

.method private _invokeOemRilRequestRaw([BLandroid/os/Message;Z)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "isString"    # Z

    .line 145
    if-nez p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mDummyHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 148
    :cond_0
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, "req":Landroid/os/Bundle;
    if-eqz p3, :cond_1

    .line 151
    const-string v1, "Action"

    invoke-direct {p0, p1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->convertByteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 155
    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 156
    new-instance v1, Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 158
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServiceMessenger is null, add message to pending queue..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->addMessageToPendingQueue(Landroid/os/Message;)V

    .line 161
    return-void

    .line 165
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_1

    .line 166
    :catch_0
    move-exception v1

    .line 169
    :goto_1
    return-void
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 174
    aget-byte v2, p1, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setMultiRilSupport(I)V
    .locals 4
    .param p1, "idxRil"    # I

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "strRilIdxPostfix":Ljava/lang/String;
    if-lez p1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMultiRilSupport() : bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMultiRilSupport() : Wrong index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bind to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addMessageToPendingQueue(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addMessageToPendingQueue()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->sendPendingMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local p0    # "this":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :cond_0
    monitor-exit p0

    return-void

    .line 178
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public connectToRilService()V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bind SecPhone Service with FactoryPhone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "userHandle":Landroid/os/UserHandle;
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.os.UserHandle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 100
    .local v2, "c":Ljava/lang/Class;
    const-string v3, "semOf"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 101
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 104
    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.phone"

    iget-object v4, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->BIND_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/content/Context;->semBindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 109
    return-void
.end method

.method public connectToRilService(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "recv"    # Landroid/content/BroadcastReceiver;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " peek SecPhone Service with FactoryPhone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Landroid/content/BroadcastReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 117
    .local v1, "service":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 118
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 119
    :cond_0
    return-void
.end method

.method public disconnectFromRilService()V
    .locals 3

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "disconnect from Ril service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    .line 128
    :cond_0
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertActionIntoMap(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "what"    # I

    .line 132
    invoke-static {p1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_insertActionIntoMap(Ljava/lang/String;Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invokeOemRilRequestRaw()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->_invokeOemRilRequestRaw([BLandroid/os/Message;Z)V

    .line 142
    return-void
.end method

.method registerAction()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "default registerAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public declared-synchronized sendPendingMessage()V
    .locals 3

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->HOST_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sendPendingMessage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mServiceMessenger:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/sec_platform_library/FactoryPhone;->mPendingMessage:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    goto :goto_0

    .line 191
    .end local p0    # "this":Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :catch_0
    move-exception v0

    .line 193
    goto :goto_0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
