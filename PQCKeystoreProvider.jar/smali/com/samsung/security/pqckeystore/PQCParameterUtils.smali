.class public abstract Lcom/samsung/security/pqckeystore/PQCParameterUtils;
.super Ljava/lang/Object;
.source "PQCParameterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeBool(I)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .locals 4
    .param p0, "tag"    # I

    .line 20
    invoke-static {p0}, Lcom/samsung/security/pqckeystore/PQCKeymasterDefs;->getTagType(I)I

    move-result v0

    .line 21
    .local v0, "type":I
    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_0

    .line 24
    new-instance v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    invoke-direct {v1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;-><init>()V

    .line 25
    .local v1, "p":Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    iput p0, v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->tag:I

    .line 26
    const/4 v2, 0x1

    invoke-static {v2}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->boolValue(Z)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object v2

    iput-object v2, v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    .line 27
    return-object v1

    .line 22
    .end local v1    # "p":Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a boolean tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeBytes(I[B)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .locals 3
    .param p0, "tag"    # I
    .param p1, "b"    # [B

    .line 72
    invoke-static {p0}, Lcom/samsung/security/pqckeystore/PQCKeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_0

    .line 75
    new-instance v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    invoke-direct {v0}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;-><init>()V

    .line 76
    .local v0, "p":Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    iput p0, v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->tag:I

    .line 77
    invoke-static {p1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->blob([B)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    .line 78
    return-object v0

    .line 73
    .end local v0    # "p":Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a bytes tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeEnum(II)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .locals 4
    .param p0, "tag"    # I
    .param p1, "v"    # I

    .line 31
    new-instance v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    invoke-direct {v0}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;-><init>()V

    .line 32
    .local v0, "kp":Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    iput p0, v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->tag:I

    .line 33
    sparse-switch p0, :sswitch_data_0

    .line 44
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

    .line 41
    :sswitch_0
    invoke-static {p1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->digest(I)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    .line 42
    goto :goto_0

    .line 35
    :sswitch_1
    invoke-static {p1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->keyPurpose(I)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    .line 36
    goto :goto_0

    .line 38
    :sswitch_2
    invoke-static {p1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->algorithm(I)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    .line 39
    nop

    .line 46
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000002 -> :sswitch_2
        0x20000001 -> :sswitch_1
        0x20000005 -> :sswitch_0
    .end sparse-switch
.end method

.method public static makeInt(II)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .locals 4
    .param p0, "tag"    # I
    .param p1, "v"    # I

    .line 50
    invoke-static {p0}, Lcom/samsung/security/pqckeystore/PQCKeymasterDefs;->getTagType(I)I

    move-result v0

    .line 51
    .local v0, "type":I
    const/high16 v1, 0x30000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an int or repeatable int tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_1
    :goto_0
    new-instance v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    invoke-direct {v1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;-><init>()V

    .line 55
    .local v1, "p":Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    iput p0, v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->tag:I

    .line 56
    invoke-static {p1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->integer(I)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object v2

    iput-object v2, v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    .line 57
    return-object v1
.end method

.method public static makeLong(IJ)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    .locals 4
    .param p0, "tag"    # I
    .param p1, "v"    # J

    .line 61
    invoke-static {p0}, Lcom/samsung/security/pqckeystore/PQCKeymasterDefs;->getTagType(I)I

    move-result v0

    .line 62
    .local v0, "type":I
    const/high16 v1, 0x50000000

    if-eq v0, v1, :cond_1

    const/high16 v1, -0x60000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a long or repeatable long tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_1
    :goto_0
    new-instance v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    invoke-direct {v1}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;-><init>()V

    .line 66
    .local v1, "p":Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;
    iput p0, v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->tag:I

    .line 67
    invoke-static {p1, p2}, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;->longInteger(J)Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    move-result-object v2

    iput-object v2, v1, Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;->value:Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameterValue;

    .line 68
    return-object v1
.end method
