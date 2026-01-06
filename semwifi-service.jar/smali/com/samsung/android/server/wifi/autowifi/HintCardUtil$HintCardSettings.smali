.class Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HintCardSettings"
.end annotation


# static fields
.field static final INVALID_INDEX:I = -0x1

.field private static final JSON_KEY_ADD_ARRAY:Ljava/lang/String; = "added"

.field private static final JSON_KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final JSON_KEY_REMOVE_ARRAY:Ljava/lang/String; = "removed"


# instance fields
.field final changeToFavoriteNetwork:Lorg/json/JSONArray;

.field final changeToNormalNetwork:Lorg/json/JSONArray;

.field private final settings:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->getHintCardJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->settings:Lorg/json/JSONObject;

    .line 9
    .line 10
    const-string v0, "added"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    .line 17
    .line 18
    const-string v0, "removed"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    .line 25
    .line 26
    return-void
.end method

.method private apply()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->settings:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v1, "added"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->settings:Lorg/json/JSONObject;

    .line 11
    .line 12
    const-string v1, "removed"

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance p0, Lorg/json/JSONArray;

    .line 11
    .line 12
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_1
    return-object p0
.end method

.method private static getHintCardJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_1
    return-object v0
.end method

.method static indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string v2, "config"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    return p0
.end method


# virtual methods
.method addToFavoriteNetwork(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "config"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    .line 19
    .line 20
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eq p1, v2, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->apply()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method addToNormalNetwork(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "config"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    .line 19
    .line 20
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ne p1, v2, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->apply()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method removeNetwork(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToFavoriteNetwork:Lorg/json/JSONArray;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->indexOf(Lorg/json/JSONArray;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->changeToNormalNetwork:Lorg/json/JSONArray;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->apply()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->settings:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
