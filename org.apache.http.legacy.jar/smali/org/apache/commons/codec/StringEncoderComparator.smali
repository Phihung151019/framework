.class public Lorg/apache/commons/codec/StringEncoderComparator;
.super Ljava/lang/Object;
.source "StringEncoderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private stringEncoder:Lorg/apache/commons/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/StringEncoder;)V
    .locals 0
    .param p1, "stringEncoder"    # Lorg/apache/commons/codec/StringEncoder;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    .line 58
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    .line 78
    .local v0, "compareCode":I
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    invoke-interface {v1, p1}, Lorg/apache/commons/codec/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 79
    .local v1, "s1":Ljava/lang/Comparable;
    iget-object v2, p0, Lorg/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codec/StringEncoder;

    invoke-interface {v2, p2}, Lorg/apache/commons/codec/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 80
    .local v2, "s2":Ljava/lang/Comparable;
    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "compareCode":I
    .end local v1    # "s1":Ljava/lang/Comparable;
    .end local v2    # "s2":Ljava/lang/Comparable;
    .local v3, "compareCode":I
    goto :goto_0

    .line 82
    .end local v3    # "compareCode":I
    .restart local v0    # "compareCode":I
    :catch_0
    move-exception v1

    .line 83
    .local v1, "ee":Lorg/apache/commons/codec/EncoderException;
    const/4 v3, 0x0

    .line 85
    .end local v0    # "compareCode":I
    .end local v1    # "ee":Lorg/apache/commons/codec/EncoderException;
    .restart local v3    # "compareCode":I
    :goto_0
    return v3
.end method
