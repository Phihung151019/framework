.class public Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;
.super Ljava/lang/Object;
.source "SessionMap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionMap"


# instance fields
.field private final mBigdataSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/uwb/bigdata/item/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    .line 14
    return-void
.end method


# virtual methods
.method public getBigdataItem(I)Lcom/samsung/android/server/uwb/bigdata/item/Item;
    .locals 3
    .param p1, "sessionID"    # I

    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34
    return-object v1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Key for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SessionMap"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-object v1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/bigdata/item/Item;

    return-object v0
.end method

.method public getItemHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/uwb/bigdata/item/Item;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public put(ILcom/samsung/android/server/uwb/bigdata/item/Item;)V
    .locals 3
    .param p1, "sessionID"    # I
    .param p2, "item"    # Lcom/samsung/android/server/uwb/bigdata/item/Item;

    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 23
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/uwb/bigdata/item/Item;

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/bigdata/item/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "sessionID"    # I

    .line 46
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nothing to remove"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/SessionMap;->mBigdataSessionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
