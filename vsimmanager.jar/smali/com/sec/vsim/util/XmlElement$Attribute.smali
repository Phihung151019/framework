.class public Lcom/sec/vsim/util/XmlElement$Attribute;
.super Ljava/lang/Object;
.source "XmlElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/util/XmlElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mNamespace:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mValue:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mValue:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 53
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 54
    return v0

    .line 56
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 57
    return v1

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 60
    return v1

    .line 62
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/vsim/util/XmlElement$Attribute;

    .line 63
    .local v2, "other":Lcom/sec/vsim/util/XmlElement$Attribute;
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 64
    iget-object v3, v2, Lcom/sec/vsim/util/XmlElement$Attribute;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 65
    return v1

    .line 67
    :cond_3
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/vsim/util/XmlElement$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 68
    return v1

    .line 71
    :cond_4
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 72
    iget-object v3, v2, Lcom/sec/vsim/util/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 73
    return v1

    .line 75
    :cond_5
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mValue:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/vsim/util/XmlElement$Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 76
    return v1

    .line 79
    :cond_6
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 80
    iget-object v3, v2, Lcom/sec/vsim/util/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 81
    return v1

    .line 83
    :cond_7
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/vsim/util/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 84
    return v1

    .line 87
    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 43
    const/16 v0, 0x1f

    .line 44
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 45
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 46
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    .line 47
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    .line 48
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method
