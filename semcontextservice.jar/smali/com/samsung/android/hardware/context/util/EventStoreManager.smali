.class public Lcom/samsung/android/hardware/context/util/EventStoreManager;
.super Ljava/lang/Object;
.source "EventStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventStoreManager"


# instance fields
.field private final mService:I

.field private final mSize:I

.field private final mStack:[Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "service"    # I
    .param p2, "size"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mTop:I

    .line 51
    iput p2, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mSize:I

    .line 52
    iput p1, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mService:I

    .line 53
    iget v0, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mSize:I

    new-array v0, v0, [Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mStack:[Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

    .line 54
    return-void
.end method


# virtual methods
.method public getEventInfo()Ljava/lang/String;
    .locals 7

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEventInfo() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mService:I

    invoke-static {v1}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventStoreManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 84
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mSize:I

    if-ge v3, v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mStack:[Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mStack:[Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 84
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mService:I

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Last event size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    if-nez v2, :cond_2

    return-object v1

    .line 92
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mSize:I

    if-ge v3, v4, :cond_5

    .line 93
    iget v4, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mTop:I

    sub-int/2addr v4, v3

    .line 94
    .local v4, "index":I
    if-gez v4, :cond_3

    iget v5, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mSize:I

    add-int/2addr v4, v5

    .line 95
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mStack:[Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    .line 96
    iget-object v5, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mStack:[Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;->getInfo()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "eventInfo":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .end local v4    # "index":I
    .end local v5    # "eventInfo":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public storeData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string v0, "EventStoreManager"

    const-string v1, "Bundle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

    iget v1, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mService:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;-><init>(ILandroid/os/Bundle;J)V

    .line 69
    .local v0, "event":Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;
    iget v1, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mTop:I

    .line 70
    iget v1, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mTop:I

    iget v2, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mSize:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mTop:I

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mStack:[Lcom/samsung/android/hardware/context/util/EventStoreManager$Event;

    iget v2, p0, Lcom/samsung/android/hardware/context/util/EventStoreManager;->mTop:I

    aput-object v0, v1, v2

    .line 72
    return-void
.end method
