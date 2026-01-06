.class public Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;
.super Ljava/lang/Object;
.source "GestureDetectE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# instance fields
.field private mGestureAllValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized getGestureAllValue()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;->mGestureAllValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 22
    .end local p0    # "this":Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 3

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;->getGestureAllValue()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "gestureAllVal":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 30
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    return-object v0
.end method

.method public declared-synchronized setGestureAllValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "gestureAllValue"    # Ljava/lang/String;

    monitor-enter p0

    .line 18
    :try_start_0
    iput-object p1, p0, Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;->mGestureAllValue:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 17
    .end local p0    # "this":Lcom/android/server/ssrm/common/intent/gesture/GestureDetectE;
    .end local p1    # "gestureAllValue":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
