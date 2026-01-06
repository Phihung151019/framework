.class public Lcom/samsung/uwb/support/data/code/MulticastUpdateStatusCode;
.super Ljava/lang/Object;
.source "MulticastUpdateStatusCode.java"


# static fields
.field public static final STATUS_ERROR_ADDRESS_ALREADY_PRESENT:I = 0x8

.field public static final STATUS_ERROR_ADDRESS_NOT_FOUND:I = 0x7

.field public static final STATUS_ERROR_KEY_FETCH_FAIL:I = 0x2

.field public static final STATUS_ERROR_MULTICAST_LIST_FULL:I = 0x1

.field public static final STATUS_ERROR_SESSION_KEY_NOT_FOUND:I = 0x6

.field public static final STATUS_ERROR_SUB_SESSION_ID_NOT_FOUND:I = 0x3

.field public static final STATUS_ERROR_SUB_SESSION_KEY_NOT_APPLICABLE:I = 0x5

.field public static final STATUS_ERROR_SUB_SESSION_KEY_NOT_FOUND:I = 0x4

.field public static final STATUS_OK_MULTICAST_LIST_UPDATE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusName(I)Ljava/lang/String;
    .locals 8
    .param p0, "status"    # I

    .line 20
    const-class v0, Lcom/samsung/uwb/support/data/code/MulticastUpdateStatusCode;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 21
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 22
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/code/MulticastUpdateStatusCode;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/code/MulticastUpdateStatusCode;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 24
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p0, :cond_0

    .line 25
    return-object v5

    .line 20
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    :cond_1
    goto :goto_1

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getStatusName Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "INVALID"

    return-object v0
.end method


# virtual methods
.method protected isDefinedValue(I)Z
    .locals 9
    .param p1, "status"    # I

    .line 37
    const-class v0, Lcom/samsung/uwb/support/data/code/MulticastUpdateStatusCode;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 38
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    new-instance v7, Lcom/samsung/uwb/support/data/code/MulticastUpdateStatusCode;

    invoke-direct {v7}, Lcom/samsung/uwb/support/data/code/MulticastUpdateStatusCode;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 40
    .local v7, "value":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, p1, :cond_0

    .line 41
    return v6

    .line 37
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    :cond_1
    goto :goto_1

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isDefinedValue Exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method
