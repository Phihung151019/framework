.class public Lcom/samsung/security/fabric/crypto/FabricKeyParameterUtils;
.super Ljava/lang/Object;
.source "FabricKeyParameterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEach([ILjava/util/function/Consumer;)V
    .locals 4
    .param p0, "array"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 12
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 13
    .local v2, "i":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    .end local v2    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public static makeEnum(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .locals 4
    .param p0, "tag"    # I
    .param p1, "v"    # I

    .line 27
    new-instance v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-direct {v0}, Lcom/samsung/security/fabric/cryptod/KeyParameter;-><init>()V

    .line 28
    .local v0, "kp":Lcom/samsung/security/fabric/cryptod/KeyParameter;
    iput p0, v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;->tag:I

    .line 29
    sparse-switch p0, :sswitch_data_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an enum or repeatable enum tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :sswitch_0
    iput p1, v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;->integer:I

    .line 37
    nop

    .line 41
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000002 -> :sswitch_0
        0x1000000a -> :sswitch_0
        0x20000004 -> :sswitch_0
        0x20000005 -> :sswitch_0
        0x20000006 -> :sswitch_0
        0x200000cb -> :sswitch_0
    .end sparse-switch
.end method

.method public static makeInt(II)Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .locals 1
    .param p0, "tag"    # I
    .param p1, "v"    # I

    .line 19
    new-instance v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;

    invoke-direct {v0}, Lcom/samsung/security/fabric/cryptod/KeyParameter;-><init>()V

    .line 20
    .local v0, "kp":Lcom/samsung/security/fabric/cryptod/KeyParameter;
    iput p0, v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;->tag:I

    .line 21
    iput p1, v0, Lcom/samsung/security/fabric/cryptod/KeyParameter;->integer:I

    .line 22
    return-object v0
.end method
