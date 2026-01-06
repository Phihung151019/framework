.class Lcom/android/internal/telephony/uicc/SemIccCardHelper$1;
.super Landroid/os/Handler;
.source "SemIccCardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SemIccCardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/SemIccCardHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SemIccCardHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper$1;->this$0:Lcom/android/internal/telephony/uicc/SemIccCardHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist notifyPending(Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 150
    monitor-enter p1

    .line 151
    :try_start_0
    iput-object p2, p1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;->mResult:Ljava/lang/Object;

    .line 152
    iget-object p0, p1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 154
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 110
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;

    .line 111
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    .line 140
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SemIccCardHelper$1;->this$0:Lcom/android/internal/telephony/uicc/SemIccCardHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ADN_RECORD_IN_PB_DONE: Cannot load ADN records; ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;->-$$Nest$mloge(Lcom/android/internal/telephony/uicc/SemIccCardHelper;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 144
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper$1;->notifyPending(Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;Ljava/lang/Object;)V

    return-void

    .line 113
    :cond_2
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 114
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 117
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x80

    if-ne v4, v5, :cond_4

    const/4 v4, 0x3

    .line 118
    aget-byte v4, v2, v4

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x81

    if-ne v5, v6, :cond_3

    const/4 v4, 0x4

    .line 119
    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x83

    goto :goto_2

    :cond_3
    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v3

    :goto_2
    add-int/lit8 v5, v4, 0x2

    .line 126
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v6, :cond_4

    add-int/lit8 v4, v4, 0x3

    .line 127
    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    if-le v2, v3, :cond_4

    .line 128
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper$1;->notifyPending(Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;Ljava/lang/Object;)V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/uicc/SemIccCardHelper$1;->notifyPending(Lcom/android/internal/telephony/uicc/SemIccCardHelper$Request;Ljava/lang/Object;)V

    return-void
.end method
