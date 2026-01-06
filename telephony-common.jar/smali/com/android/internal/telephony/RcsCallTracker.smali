.class public Lcom/android/internal/telephony/RcsCallTracker;
.super Landroid/os/Handler;
.source "RcsCallTracker.java"


# instance fields
.field blacklist availableConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mActiveConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContext:Landroid/content/Context;

.field blacklist mHoldConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    .line 83
    const-string v0, "RcsCallTracker"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    .line 86
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist analizeAndSendEvents()V
    .locals 9

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 122
    invoke-direct {p0, v3, v2, v1}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 129
    iget-object v5, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 131
    invoke-direct {p0, v4, v2, v1}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_4

    goto :goto_2

    .line 140
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analizeAndSendEvents - Connection state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RcsCallTracker"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v5, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_3

    .line 145
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    .line 152
    :goto_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v2

    goto :goto_4

    .line 154
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_8

    move v7, v4

    goto :goto_4

    .line 156
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_9

    move v7, v3

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-ne v7, v5, :cond_b

    if-ne v7, v3, :cond_a

    if-eq v5, v3, :cond_b

    .line 165
    :cond_a
    const-string v1, "analizeAndSendEvents - Dual notification from modem. skipping notification"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 169
    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    if-eq v7, v3, :cond_d

    if-eq v7, v4, :cond_c

    goto :goto_5

    .line 173
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 176
    :cond_d
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_5
    invoke-direct {p0, v5, v7, v1}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method private blacklist notifyTransition(IILcom/android/internal/telephony/Connection;)V
    .locals 7

    const/4 v0, 0x2

    if-ne p1, p2, :cond_0

    if-ne p2, v0, :cond_5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 197
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    const-string v3, "EXTRA_IS_INCOMING"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    const-string v2, "EXTRA_TEL_NUMBER"

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object p3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    const-string v2, "EXTRA_PHONE_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTransition - phoneId: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "RcsCallTracker"

    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    const/4 v3, 0x4

    .line 202
    const-string v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v5, "EXTRA_CALL_EVENT"

    if-ne p2, v3, :cond_1

    .line 203
    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v6, 0x3

    if-ne p2, v6, :cond_2

    .line 208
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    if-ne p1, p3, :cond_3

    .line 213
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne p2, v0, :cond_4

    if-ne p1, v6, :cond_4

    .line 218
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_4
    if-ne p2, v0, :cond_5

    if-ne p1, v0, :cond_5

    .line 225
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string p1, "dest == ACTIVE && src == ACTIVE"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 91
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 96
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/RcsCallTracker;->analizeAndSendEvents()V

    return-void
.end method
