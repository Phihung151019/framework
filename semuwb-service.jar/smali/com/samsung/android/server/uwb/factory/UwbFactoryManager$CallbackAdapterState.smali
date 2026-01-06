.class Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;
.super Ljava/lang/Object;
.source "UwbFactoryManager.java"

# interfaces
.implements Landroid/uwb/UwbManager$AdapterStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackAdapterState"
.end annotation


# instance fields
.field private mExpectedState:I

.field private mReason:I

.field private mState:I

.field private mWaitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2982
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mState:I

    .line 2983
    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mExpectedState:I

    .line 2984
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mReason:I

    .line 2987
    return-void
.end method


# virtual methods
.method public declared-synchronized clearWaitObject()V
    .locals 1

    monitor-enter p0

    .line 3025
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mWaitObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3026
    monitor-exit p0

    return-void

    .line 3024
    .end local p0    # "this":Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getReason()I
    .locals 1

    .line 3045
    iget v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mReason:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 3041
    iget v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mState:I

    return v0
.end method

.method public getWaitObject()Ljava/lang/Object;
    .locals 1

    .line 3037
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized onStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "reason"    # I

    monitor-enter p0

    .line 2991
    :try_start_0
    const-string v0, "UwbFactoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStatusChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iput p2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mReason:I

    .line 2993
    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    .line 3010
    .end local p0    # "this":Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;
    const-string v0, "UwbFactoryManager"

    goto :goto_0

    .line 3006
    .restart local p0    # "this":Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;
    :pswitch_0
    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mState:I

    .line 3007
    goto :goto_1

    .line 2999
    .end local p0    # "this":Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;
    :pswitch_1
    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 3001
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mState:I

    goto :goto_1

    .line 2995
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mState:I

    .line 2996
    goto :goto_1

    .line 3010
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStatusChanged: Not defined state, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mWaitObject:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 3016
    iget v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mExpectedState:I

    if-ne p1, v0, :cond_2

    .line 3017
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mWaitObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3018
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3019
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3022
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 2990
    .end local p1    # "state":I
    .end local p2    # "reason":I
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setExpectedState(I)V
    .locals 0
    .param p1, "mExpectedState"    # I

    .line 3033
    iput p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mExpectedState:I

    .line 3034
    return-void
.end method

.method public setWaitObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 3029
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->mWaitObject:Ljava/lang/Object;

    .line 3030
    return-void
.end method
