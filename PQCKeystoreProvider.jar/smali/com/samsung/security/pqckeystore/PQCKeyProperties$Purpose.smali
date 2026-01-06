.class public abstract Lcom/samsung/security/pqckeystore/PQCKeyProperties$Purpose;
.super Ljava/lang/Object;
.source "PQCKeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/pqckeystore/PQCKeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Purpose"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 95
    .local p0, "purposes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 96
    .local v0, "result":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 97
    .local v2, "keymasterPurpose":I
    invoke-static {v2}, Lcom/samsung/security/pqckeystore/PQCKeyProperties$Purpose;->fromKeymaster(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 98
    .end local v2    # "keymasterPurpose":I
    goto :goto_0

    .line 99
    :cond_0
    return v0
.end method

.method public static allToKeymaster(I)[I
    .locals 3
    .param p0, "purposes"    # I

    .line 87
    invoke-static {p0}, Lcom/samsung/security/pqckeystore/PQCKeyProperties;->-$$Nest$smgetSetFlags(I)[I

    move-result-object v0

    .line 88
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 89
    aget v2, v0, v1

    invoke-static {v2}, Lcom/samsung/security/pqckeystore/PQCKeyProperties$Purpose;->toKeymaster(I)I

    move-result v2

    aput v2, v0, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static fromKeymaster(I)I
    .locals 3
    .param p0, "purpose"    # I

    .line 71
    packed-switch p0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 77
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 75
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 73
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toKeymaster(I)I
    .locals 3
    .param p0, "purpose"    # I

    .line 56
    sparse-switch p0, :sswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 62
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 60
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 58
    :sswitch_3
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
