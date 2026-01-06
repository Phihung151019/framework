.class public Lorg/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field protected maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 51
    const-string v0, "WR"

    const-string v1, "PS"

    const-string v2, "GN"

    const-string v3, "KN"

    const-string v4, "PN"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 53
    const-string v9, "W"

    const-string v10, " "

    const-string v1, "L"

    const-string v2, "R"

    const-string v3, "N"

    const-string v4, "M"

    const-string v5, "B"

    const-string v6, "H"

    const-string v7, "F"

    const-string v8, "V"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 55
    const-string v10, "EI"

    const-string v11, "ER"

    const-string v1, "ES"

    const-string v2, "EP"

    const-string v3, "EB"

    const-string v4, "EL"

    const-string v5, "EY"

    const-string v6, "IB"

    const-string v7, "IL"

    const-string v8, "IN"

    const-string v9, "IE"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 57
    const-string v7, "B"

    const-string v8, "Z"

    const-string v1, "L"

    const-string v2, "T"

    const-string v3, "K"

    const-string v4, "S"

    const-string v5, "N"

    const-string v6, "M"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 70
    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 923
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 924
    return-object v0

    .line 926
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 927
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 928
    return-object v0

    .line 930
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 814
    const/4 v0, 0x4

    const-string v1, "CHIA"

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 815
    return v1

    .line 816
    :cond_0
    const/4 v0, 0x0

    if-gt p2, v1, :cond_1

    .line 817
    return v0

    .line 818
    :cond_1
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 819
    return v0

    .line 820
    :cond_2
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    const-string v4, "ACH"

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 821
    return v0

    .line 823
    :cond_3
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    .line 824
    .local v2, "c":C
    const/16 v3, 0x49

    if-eq v2, v3, :cond_4

    const/16 v3, 0x45

    if-ne v2, v3, :cond_5

    :cond_4
    add-int/lit8 v3, p2, -0x2

    .line 825
    const/4 v4, 0x6

    const-string v5, "BACHER"

    const-string v6, "MACHER"

    invoke-static {p1, v3, v4, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    goto :goto_0

    :cond_6
    move v1, v0

    .line 824
    :goto_0
    return v1
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 833
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 834
    return v0

    .line 835
    :cond_0
    add-int/lit8 v1, p2, 0x1

    const-string v2, "HARAC"

    const-string v3, "HARIS"

    const/4 v4, 0x5

    invoke-static {p1, v1, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v6, p2, 0x1

    .line 836
    const/4 v7, 0x3

    const-string v8, "HOR"

    const-string v9, "HYM"

    const-string v10, "HIA"

    const-string v11, "HEM"

    move-object v5, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    invoke-static/range {v5 .. v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 837
    return v0

    .line 835
    .end local v5    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    move-object v5, p1

    .line 838
    .end local p1    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_2
    const-string p1, "CHORE"

    invoke-static {v5, v0, v4, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 839
    return v0

    .line 841
    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 849
    const-string v0, "VAN "

    const-string v1, "VON "

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v2, v3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x3

    const-string v3, "SCH"

    invoke-static {p1, v2, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v4, p2, -0x2

    .line 851
    const/4 v5, 0x6

    const-string v6, "ORCHES"

    const-string v7, "ARCHIT"

    const-string v8, "ORCHID"

    move-object v3, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    add-int/lit8 p1, p2, 0x2

    .line 852
    const-string v0, "T"

    const-string v4, "S"

    invoke-static {v3, p1, v1, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    add-int/lit8 v4, p2, -0x1

    .line 853
    const/4 v5, 0x1

    const-string v6, "A"

    const-string v7, "O"

    const-string v8, "U"

    const-string v9, "E"

    invoke-static/range {v3 .. v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    add-int/lit8 p1, p2, 0x2

    sget-object v0, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 854
    invoke-static {v3, p1, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    add-int/lit8 p1, p2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 849
    .end local v3    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_2
    move-object v3, p1

    .line 854
    .end local p1    # "value":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_3
    :goto_0
    move v2, v1

    .line 849
    :goto_1
    return v2
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 861
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    add-int/lit8 v3, p2, -0x1

    .line 862
    const/4 v4, 0x4

    const-string v5, "ILLO"

    const-string v6, "ILLA"

    const-string v7, "ALLE"

    move-object v2, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 863
    return v1

    .line 861
    .end local v2    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .line 864
    .end local p1    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 p1, p2, -0x1

    const-string v0, "AS"

    const-string v3, "OS"

    const/4 v4, 0x2

    invoke-static {v2, p1, v4, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 865
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    const-string v0, "A"

    const-string v3, "O"

    invoke-static {v2, p1, v1, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    add-int/lit8 p1, p2, -0x1

    .line 866
    const/4 v0, 0x4

    const-string v3, "ALLE"

    invoke-static {v2, p1, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 867
    return v1

    .line 869
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 877
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 878
    return v2

    .line 880
    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x3

    const-string v3, "UMB"

    invoke-static {p1, v0, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 881
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, p2, 0x2

    const-string v1, "ER"

    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 880
    :cond_2
    :goto_0
    return v2
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # Ljava/lang/String;

    .line 950
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;

    .line 959
    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;

    .line 969
    filled-new-array {p3, p4, p5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;

    .line 979
    filled-new-array {p3, p4, p5, p6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;

    .line 991
    filled-new-array {p3, p4, p5, p6, p7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria1"    # Ljava/lang/String;
    .param p4, "criteria2"    # Ljava/lang/String;
    .param p5, "criteria3"    # Ljava/lang/String;
    .param p6, "criteria4"    # Ljava/lang/String;
    .param p7, "criteria5"    # Ljava/lang/String;
    .param p8, "criteria6"    # Ljava/lang/String;

    .line 1003
    filled-new-array/range {p3 .. p8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # [Ljava/lang/String;

    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "result":Z
    if-ltz p1, :cond_1

    add-int v1, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1017
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, "target":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 1020
    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1021
    const/4 v0, 0x1

    .line 1022
    goto :goto_1

    .line 1019
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1026
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private handleAEIOUY(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 276
    if-nez p3, :cond_0

    .line 277
    const/16 v0, 0x41

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 279
    :cond_0
    add-int/lit8 v0, p3, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 13
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 288
    move-object v6, p2

    move/from16 v1, p3

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v2

    const/16 v7, 0x4b

    const/4 v8, 0x2

    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 290
    add-int/2addr v1, v8

    .end local p3    # "index":I
    .local v1, "index":I
    goto/16 :goto_1

    .line 291
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_0
    const/16 v9, 0x53

    if-nez v1, :cond_1

    const/4 v2, 0x6

    const-string v3, "CAESAR"

    invoke-static {p1, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {p2, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 293
    add-int/2addr v1, v8

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_1

    .line 294
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_1
    const-string v2, "CH"

    invoke-static {p1, v1, v8, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_1

    .line 296
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_2
    const-string v2, "CZ"

    invoke-static {p1, v1, v8, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    const/16 v10, 0x58

    if-eqz v2, :cond_3

    add-int/lit8 v2, v1, -0x2

    .line 297
    const/4 v3, 0x4

    const-string v4, "WICZ"

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 299
    invoke-virtual {p2, v9, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 300
    add-int/2addr v1, v8

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_1

    .line 301
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_3
    add-int/lit8 v2, v1, 0x1

    const-string v3, "CIA"

    const/4 v11, 0x3

    invoke-static {p1, v2, v11, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 303
    invoke-virtual {p2, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 304
    add-int/2addr v1, v11

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_1

    .line 305
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_4
    const-string v2, "CC"

    invoke-static {p1, v1, v8, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    const/4 v12, 0x1

    if-eqz v2, :cond_6

    if-ne v1, v12, :cond_5

    .line 306
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_6

    .line 308
    :cond_5
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v2

    return v2

    .line 309
    :cond_6
    const-string v4, "CG"

    const-string v5, "CQ"

    const/4 v2, 0x2

    const-string v3, "CK"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 310
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 311
    add-int/lit8 v1, p3, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 312
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_7
    const-string v4, "CE"

    const-string v5, "CY"

    const/4 v2, 0x2

    const-string v3, "CI"

    move-object v0, p1

    move/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 314
    const-string v4, "CIE"

    const-string v5, "CIA"

    const/4 v2, 0x3

    const-string v3, "CIO"

    move-object v0, p1

    move/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 315
    invoke-virtual {p2, v9, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 317
    :cond_8
    invoke-virtual {p2, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 319
    :goto_0
    add-int/lit8 v1, p3, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 321
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_9
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 322
    add-int/lit8 v1, p3, 0x1

    const-string v4, " Q"

    const-string v5, " G"

    const/4 v2, 0x2

    const-string v3, " C"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 324
    add-int/lit8 v1, p3, 0x3

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 325
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_a
    add-int/lit8 v1, p3, 0x1

    const-string v4, "K"

    const-string v5, "Q"

    const/4 v2, 0x1

    const-string v3, "C"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v1, p3, 0x1

    .line 326
    const-string v2, "CE"

    const-string v3, "CI"

    invoke-static {p1, v1, v8, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 327
    add-int/lit8 v1, p3, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_1

    .line 329
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_b
    add-int/lit8 v1, p3, 0x1

    .line 333
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_1
    return v1
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 342
    add-int/lit8 v1, p3, 0x2

    const-string v4, "E"

    const-string v5, "H"

    const/4 v2, 0x1

    const-string v3, "I"

    move-object v0, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    add-int/lit8 p1, p3, 0x2

    .line 343
    const-string v2, "HU"

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 345
    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    add-int/lit8 p1, p3, -0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 v1, 0x41

    if-eq p1, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p3, -0x1

    .line 346
    const/4 v1, 0x5

    const-string v2, "UCCEE"

    const-string v3, "UCCES"

    invoke-static {v0, p1, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 348
    :cond_1
    const-string p1, "KS"

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    const/16 p1, 0x58

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 353
    :goto_0
    add-int/lit8 p3, p3, 0x3

    goto :goto_1

    .line 355
    :cond_3
    const/16 p1, 0x4b

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 356
    add-int/2addr p3, v1

    .line 359
    :goto_1
    return p3
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 368
    const/16 v0, 0x58

    const/16 v1, 0x4b

    if-lez p3, :cond_0

    const/4 v2, 0x4

    const-string v3, "CHAE"

    invoke-static {p1, p3, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 370
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 371
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 374
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 375
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 378
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 380
    :cond_2
    if-lez p3, :cond_4

    .line 381
    const/4 v2, 0x0

    const-string v3, "MC"

    const/4 v4, 0x2

    invoke-static {p1, v2, v4, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 384
    :cond_3
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 387
    :cond_4
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 389
    :goto_0
    add-int/lit8 v0, p3, 0x2

    return v0
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 399
    const-string v0, "DG"

    const/4 v1, 0x2

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    add-int/lit8 v3, p3, 0x2

    const-string v6, "E"

    const-string v7, "Y"

    const/4 v4, 0x1

    const-string v5, "I"

    move-object v2, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    const/16 p1, 0x4a

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 403
    add-int/lit8 p3, p3, 0x3

    goto :goto_0

    .line 406
    :cond_0
    const-string p1, "TK"

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 407
    add-int/2addr p3, v1

    goto :goto_0

    .line 409
    .end local v2    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .end local p1    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    const-string p1, "DT"

    const-string v0, "DD"

    invoke-static {v2, p3, v1, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x54

    if-eqz p1, :cond_2

    .line 410
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 411
    add-int/2addr p3, v1

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 414
    add-int/lit8 p3, p3, 0x1

    .line 416
    :goto_0
    return p3
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 14
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 426
    move-object v0, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    if-ne v1, v2, :cond_0

    .line 427
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .end local p3    # "index":I
    .local v1, "index":I
    goto/16 :goto_4

    .line 428
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_0
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4e

    const/16 v3, 0x59

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v1, v2, :cond_3

    .line 429
    const-string v1, "N"

    const-string v2, "KN"

    if-ne v7, v10, :cond_1

    invoke-virtual {p0, p1, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p4, :cond_1

    .line 430
    invoke-virtual {v6, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_1
    add-int/lit8 v4, v7, 0x2

    const-string v5, "EY"

    invoke-static {p1, v4, v9, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v7, 0x1

    .line 432
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    if-eq v4, v3, :cond_2

    if-nez p4, :cond_2

    .line 433
    invoke-virtual {v6, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {v6, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 437
    :goto_0
    add-int/lit8 v1, v7, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_4

    .line 438
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_3
    add-int/lit8 v1, v7, 0x1

    const-string v2, "LI"

    invoke-static {p1, v1, v9, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p4, :cond_4

    .line 439
    const-string v1, "KL"

    const-string v2, "L"

    invoke-virtual {v6, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    add-int/lit8 v1, v7, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_4

    .line 441
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_4
    const/16 v11, 0x4a

    const/16 v12, 0x4b

    if-nez v7, :cond_6

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v3, :cond_5

    add-int/lit8 v1, v7, 0x1

    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    invoke-static {p1, v1, v9, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 443
    :cond_5
    invoke-virtual {v6, v12, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 444
    add-int/lit8 v1, v7, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_4

    .line 445
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_6
    add-int/lit8 v1, v7, 0x1

    const-string v2, "ER"

    invoke-static {p1, v1, v9, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    const/4 v13, 0x3

    if-nez v1, :cond_7

    add-int/lit8 v1, v7, 0x1

    .line 446
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v3, :cond_8

    :cond_7
    nop

    .line 447
    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, "DANGER"

    const-string v4, "RANGER"

    const-string v5, "MANGER"

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    add-int/lit8 v1, v7, -0x1

    .line 448
    const-string v2, "E"

    const-string v3, "I"

    invoke-static {p1, v1, v10, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    add-int/lit8 v1, v7, -0x1

    .line 449
    const-string v2, "RGY"

    const-string v3, "OGY"

    invoke-static {p1, v1, v13, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 451
    invoke-virtual {v6, v12, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 452
    add-int/lit8 v1, v7, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_4

    .line 453
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_8
    add-int/lit8 v1, v7, 0x1

    const-string v4, "I"

    const-string v5, "Y"

    const/4 v2, 0x1

    const-string v3, "E"

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_b

    add-int/lit8 v1, v7, -0x1

    .line 454
    const-string v3, "AGGI"

    const-string v4, "OGGI"

    invoke-static {p1, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 465
    :cond_9
    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x47

    if-ne v1, v2, :cond_a

    .line 466
    add-int/lit8 v1, v7, 0x2

    .line 467
    .end local p3    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v6, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    .line 469
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_a
    add-int/lit8 v1, v7, 0x1

    .line 470
    .end local p3    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {v6, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    .line 456
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_b
    :goto_1
    const-string v1, "VAN "

    const-string v3, "VON "

    invoke-static {p1, v8, v2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "SCH"

    invoke-static {p1, v8, v13, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    add-int/lit8 v1, v7, 0x1

    const-string v3, "ET"

    invoke-static {p1, v1, v9, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2

    .line 459
    :cond_c
    add-int/lit8 v1, v7, 0x1

    const-string v3, "IER"

    invoke-static {p1, v1, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 460
    invoke-virtual {v6, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_3

    .line 462
    :cond_d
    invoke-virtual {v6, v11, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 458
    :cond_e
    :goto_2
    invoke-virtual {v6, v12}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 464
    :goto_3
    add-int/lit8 v1, v7, 0x2

    .line 472
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_4
    return v1
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 481
    const/16 v0, 0x4b

    const/4 v1, 0x2

    if-lez p3, :cond_0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 483
    add-int/2addr p3, v1

    move-object v4, p1

    goto/16 :goto_3

    .line 484
    :cond_0
    const/16 v2, 0x49

    if-nez p3, :cond_2

    .line 485
    add-int/lit8 v3, p3, 0x2

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v2, :cond_1

    .line 486
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 490
    :goto_0
    add-int/2addr p3, v1

    move-object v4, p1

    goto/16 :goto_3

    .line 491
    :cond_2
    const/4 v3, 0x1

    if-le p3, v3, :cond_3

    add-int/lit8 v5, p3, -0x2

    const-string v8, "H"

    const-string v9, "D"

    const/4 v6, 0x1

    const-string v7, "B"

    move-object v4, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    invoke-static/range {v4 .. v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .end local v4    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_3
    move-object v4, p1

    .end local p1    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :goto_1
    if-le p3, v1, :cond_4

    add-int/lit8 v5, p3, -0x3

    .line 492
    const/4 v6, 0x1

    const-string v7, "B"

    const-string v8, "H"

    const-string v9, "D"

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 p1, 0x3

    if-le p3, p1, :cond_6

    add-int/lit8 p1, p3, -0x4

    .line 493
    const-string v5, "B"

    const-string v6, "H"

    invoke-static {v4, p1, v3, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 495
    :cond_5
    add-int/2addr p3, v1

    goto :goto_3

    .line 497
    :cond_6
    if-le p3, v1, :cond_7

    add-int/lit8 p1, p3, -0x1

    invoke-virtual {p0, v4, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 v3, 0x55

    if-ne p1, v3, :cond_7

    add-int/lit8 v5, p3, -0x3

    .line 498
    const/4 v6, 0x1

    const-string v7, "C"

    const-string v8, "G"

    const-string v9, "L"

    const-string v10, "R"

    const-string v11, "T"

    invoke-static/range {v4 .. v11}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 500
    const/16 p1, 0x46

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_2

    .line 501
    :cond_7
    if-lez p3, :cond_8

    add-int/lit8 p1, p3, -0x1

    invoke-virtual {p0, v4, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-eq p1, v2, :cond_8

    .line 502
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 504
    :cond_8
    :goto_2
    add-int/2addr p3, v1

    .line 506
    :goto_3
    return p3
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 516
    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 517
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 519
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 522
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 524
    :goto_0
    return p3
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 532
    const/4 v0, 0x4

    const-string v1, "JOSE"

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    const/16 v3, 0x20

    const-string v4, "SAN "

    const/4 v5, 0x0

    const/16 v6, 0x48

    const/16 v7, 0x4a

    const/4 v8, 0x1

    if-nez v2, :cond_8

    invoke-static {p1, v5, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    goto/16 :goto_1

    .line 542
    :cond_0
    const/16 v2, 0x41

    if-nez p3, :cond_1

    invoke-static {p1, p3, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p2, v7, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    move-object v1, p1

    goto :goto_0

    .line 544
    :cond_1
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    add-int/lit8 v0, p3, 0x1

    .line 545
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_3

    .line 546
    :cond_2
    invoke-virtual {p2, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    move-object v1, p1

    goto :goto_0

    .line 547
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v8

    if-ne p3, v0, :cond_4

    .line 548
    invoke-virtual {p2, v7, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    move-object v1, p1

    goto :goto_0

    .line 549
    :cond_4
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v0, v8, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v2, p3, -0x1

    const-string v5, "K"

    const-string v6, "L"

    const/4 v3, 0x1

    const-string v4, "S"

    move-object v1, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 550
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 549
    .end local v1    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_5
    move-object v1, p1

    .line 553
    .end local p1    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_6
    :goto_0
    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-ne p1, v7, :cond_7

    .line 554
    add-int/lit8 p3, p3, 0x2

    goto :goto_4

    .line 556
    :cond_7
    add-int/2addr p3, v8

    goto :goto_4

    .line 532
    .end local v1    # "value":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/String;
    :cond_8
    move-object v1, p1

    .line 534
    .end local p1    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :goto_1
    if-nez p3, :cond_9

    add-int/lit8 p1, p3, 0x4

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    if-eq p1, v3, :cond_b

    .line 535
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v0, :cond_b

    invoke-static {v1, v5, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    .line 538
    :cond_a
    invoke-virtual {p2, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 536
    :cond_b
    :goto_2
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 540
    :goto_3
    add-int/2addr p3, v8

    .line 559
    :goto_4
    return p3
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 568
    const/16 v0, 0x4c

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 569
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v0, :cond_1

    .line 570
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 573
    :cond_0
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 575
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 577
    :goto_0
    return p3
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 586
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 587
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 588
    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    .line 590
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 591
    add-int/lit8 v0, p3, 0x1

    const-string v1, "P"

    const-string v2, "B"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    :goto_0
    move p3, v0

    .line 593
    :goto_1
    return p3
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x52

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 v0, p3, -0x2

    .line 604
    const/4 v2, 0x2

    const-string v3, "IE"

    invoke-static {p1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, -0x4

    .line 605
    const-string v3, "ME"

    const-string v4, "MA"

    invoke-static {p1, v0, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 610
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p3, 0x1

    :goto_1
    return v0
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 14
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 620
    move-object/from16 v7, p2

    move/from16 v8, p3

    add-int/lit8 v1, v8, -0x1

    const-string v2, "ISL"

    const-string v3, "YSL"

    const/4 v4, 0x3

    invoke-static {p1, v1, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    .line 622
    add-int/lit8 v1, v8, 0x1

    .end local p3    # "index":I
    .local v1, "index":I
    goto/16 :goto_6

    .line 623
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_0
    const/16 v10, 0x58

    const/16 v11, 0x53

    if-nez v8, :cond_1

    const/4 v1, 0x5

    const-string v2, "SUGAR"

    invoke-static {p1, v8, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    invoke-virtual {v7, v10, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 626
    add-int/lit8 v1, v8, 0x1

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_6

    .line 627
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_1
    const-string v1, "SH"

    const/4 v12, 0x2

    invoke-static {p1, v8, v12, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 628
    add-int/lit8 v1, v8, 0x1

    const-string v5, "HOLM"

    const-string v6, "HOLZ"

    const/4 v2, 0x4

    const-string v3, "HEIM"

    const-string v4, "HOEK"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    invoke-virtual {v7, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {v7, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 635
    :goto_0
    add-int/lit8 v1, v8, 0x2

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_6

    .line 636
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_3
    const-string v1, "SIO"

    const-string v2, "SIA"

    invoke-static {p1, v8, v4, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x4

    const-string v2, "SIAN"

    invoke-static {p1, v8, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 644
    :cond_4
    const-string v13, "Z"

    if-nez v8, :cond_5

    add-int/lit8 v1, v8, 0x1

    const-string v5, "L"

    const-string v6, "W"

    const/4 v2, 0x1

    const-string v3, "M"

    const-string v4, "N"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    add-int/lit8 v1, v8, 0x1

    invoke-static {p1, v1, v9, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 649
    :cond_6
    invoke-virtual {v7, v11, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 650
    add-int/lit8 v1, v8, 0x1

    invoke-static {p1, v1, v9, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v8, 0x2

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v8, 0x1

    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_1
    goto :goto_6

    .line 651
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_8
    const-string v1, "SC"

    invoke-static {p1, v8, v12, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 652
    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .end local p3    # "index":I
    .restart local v1    # "index":I
    goto :goto_6

    .line 654
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    if-ne v8, v1, :cond_a

    add-int/lit8 v1, v8, -0x2

    const-string v2, "AI"

    const-string v3, "OI"

    invoke-static {p1, v1, v12, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 657
    invoke-virtual {v7, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_2

    .line 659
    :cond_a
    invoke-virtual {v7, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 661
    :goto_2
    add-int/lit8 v1, v8, 0x1

    const-string v2, "S"

    invoke-static {p1, v1, v9, v2, v13}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v1, v8, 0x2

    goto :goto_3

    :cond_b
    add-int/lit8 v1, v8, 0x1

    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_3
    goto :goto_6

    .line 638
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_c
    :goto_4
    if-eqz p4, :cond_d

    .line 639
    invoke-virtual {v7, v11}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_5

    .line 641
    :cond_d
    invoke-virtual {v7, v11, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 643
    :goto_5
    add-int/lit8 v1, v8, 0x3

    .line 663
    .end local p3    # "index":I
    .restart local v1    # "index":I
    :goto_6
    return v1
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 672
    add-int/lit8 v1, p3, 0x2

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x48

    const/16 v9, 0x53

    const-string v10, "SK"

    if-ne v1, v2, :cond_3

    .line 674
    add-int/lit8 v1, p3, 0x3

    const-string v7, "ED"

    const-string v8, "EM"

    const/4 v2, 0x2

    const-string v3, "OO"

    const-string v4, "ER"

    const-string v5, "EN"

    const-string v6, "UY"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    add-int/lit8 v1, p3, 0x3

    const-string v2, "ER"

    const-string v3, "EN"

    const/4 v4, 0x2

    invoke-static {p1, v1, v4, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const-string v1, "X"

    invoke-virtual {p2, v1, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_0
    invoke-virtual {p2, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_1
    const/16 v1, 0x58

    if-nez p3, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    const/16 v3, 0x57

    if-eq v2, v3, :cond_2

    .line 685
    invoke-virtual {p2, v1, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 687
    :cond_2
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 690
    :cond_3
    add-int/lit8 v1, p3, 0x2

    const-string v4, "E"

    const-string v5, "Y"

    const/4 v2, 0x1

    const-string v3, "I"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 691
    invoke-virtual {p2, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 693
    :cond_4
    invoke-virtual {p2, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 695
    :goto_0
    add-int/lit8 v0, p3, 0x3

    return v0
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 704
    const-string v0, "TION"

    const/4 v1, 0x4

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    const/16 v2, 0x58

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 706
    add-int/2addr p3, v3

    goto :goto_4

    .line 707
    :cond_0
    const-string v0, "TIA"

    const-string v4, "TCH"

    invoke-static {p1, p3, v3, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 709
    add-int/2addr p3, v3

    goto :goto_4

    .line 710
    :cond_1
    const-string v0, "TH"

    const/4 v2, 0x2

    invoke-static {p1, p3, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    const/16 v4, 0x54

    if-nez v0, :cond_4

    const-string v0, "TTH"

    invoke-static {p1, p3, v3, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 722
    :cond_2
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 723
    add-int/lit8 v0, p3, 0x1

    const-string v1, "T"

    const-string v2, "D"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, 0x1

    :goto_0
    move p3, v0

    goto :goto_4

    .line 712
    :cond_4
    :goto_1
    add-int/lit8 v0, p3, 0x2

    const-string v5, "OM"

    const-string v6, "AM"

    invoke-static {p1, v0, v2, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 714
    const/4 v0, 0x0

    const-string v5, "VAN "

    const-string v6, "VON "

    invoke-static {p1, v0, v1, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 715
    const-string v1, "SCH"

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 718
    :cond_5
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 716
    :cond_6
    :goto_2
    invoke-virtual {p2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 720
    :goto_3
    add-int/2addr p3, v2

    .line 725
    :goto_4
    return p3
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 734
    const-string v0, "WR"

    const/4 v1, 0x2

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 737
    add-int/2addr p3, v1

    move-object v2, p1

    goto/16 :goto_3

    .line 739
    :cond_0
    const/16 v0, 0x46

    if-nez p3, :cond_3

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 740
    const-string v2, "WH"

    invoke-static {p1, p3, v1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 741
    :cond_1
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    const/16 v2, 0x41

    if-eqz v1, :cond_2

    .line 743
    invoke-virtual {p2, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 746
    :cond_2
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 748
    :goto_0
    add-int/lit8 p3, p3, 0x1

    move-object v2, p1

    goto :goto_3

    .line 749
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_5

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, p1

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v3, p3, -0x1

    .line 750
    const/4 v4, 0x5

    const-string v5, "EWSKI"

    const-string v6, "EWSKY"

    const-string v7, "OWSKI"

    const-string v8, "OWSKY"

    move-object v2, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    invoke-static/range {v2 .. v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 752
    const/4 p1, 0x0

    const/4 v1, 0x3

    const-string v3, "SCH"

    invoke-static {v2, p1, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 756
    :cond_6
    const-string p1, "WICZ"

    const-string v0, "WITZ"

    const/4 v1, 0x4

    invoke-static {v2, p3, v1, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 758
    const-string p1, "TS"

    const-string v0, "FX"

    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    add-int/2addr p3, v1

    goto :goto_3

    .line 761
    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 754
    :cond_8
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 755
    add-int/lit8 p3, p3, 0x1

    .line 764
    :goto_3
    return p3
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 773
    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 774
    const/16 v1, 0x53

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 775
    add-int/2addr p3, v0

    goto :goto_1

    .line 777
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p3, v1, :cond_1

    add-int/lit8 v1, p3, -0x3

    .line 778
    const/4 v2, 0x3

    const-string v3, "IAU"

    const-string v4, "EAU"

    invoke-static {p1, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p3, -0x2

    .line 779
    const/4 v2, 0x2

    const-string v3, "AU"

    const-string v4, "OU"

    invoke-static {p1, v1, v2, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 781
    :cond_1
    const-string v1, "KS"

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 783
    :cond_2
    add-int/lit8 v1, p3, 0x1

    const-string v2, "C"

    const-string v3, "X"

    invoke-static {p1, v1, v0, v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, 0x1

    :goto_0
    move p3, v0

    .line 785
    :goto_1
    return p3
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 793
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 795
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 796
    add-int/lit8 p3, p3, 0x2

    move-object v0, p1

    goto :goto_3

    .line 798
    :cond_0
    add-int/lit8 v1, p3, 0x1

    const-string v4, "ZI"

    const-string v5, "ZA"

    const/4 v2, 0x2

    const-string v3, "ZO"

    move-object v0, p1

    .end local p1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p4, :cond_1

    if-lez p3, :cond_1

    add-int/lit8 p1, p3, -0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 v1, 0x54

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 801
    :cond_1
    const/16 p1, 0x53

    invoke-virtual {p2, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 799
    :cond_2
    :goto_0
    const-string p1, "S"

    const-string v1, "TS"

    invoke-virtual {p2, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :goto_1
    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result p1

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_3

    add-int/lit8 p1, p3, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p3, 0x1

    :goto_2
    move p3, p1

    .line 805
    :goto_3
    return p3
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 911
    sget-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    const/4 v0, 0x1

    .line 913
    goto :goto_1

    .line 910
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 892
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 893
    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_1

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 892
    :goto_1
    return v0
.end method

.method private isVowel(C)Z
    .locals 2
    .param p1, "ch"    # C

    .line 900
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 939
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 942
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 940
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alternate"    # Z

    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "slavoGermanic":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v1

    .line 99
    .local v1, "index":I
    new-instance v2, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 101
    .local v2, "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_8

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4e

    const/16 v5, 0x4b

    const/16 v6, 0x46

    sparse-switch v3, :sswitch_data_0

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    goto :goto_0

    .line 156
    :sswitch_0
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 158
    goto :goto_0

    .line 117
    :sswitch_1
    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_0

    .line 186
    :sswitch_2
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 187
    goto :goto_0

    .line 183
    :sswitch_3
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 184
    goto :goto_0

    .line 180
    :sswitch_4
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 181
    goto :goto_0

    .line 176
    :sswitch_5
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 177
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_1
    move v1, v3

    .line 178
    goto :goto_0

    .line 173
    :sswitch_6
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 174
    goto :goto_0

    .line 170
    :sswitch_7
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 171
    goto :goto_0

    .line 167
    :sswitch_8
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 168
    goto :goto_0

    .line 163
    :sswitch_9
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 164
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x51

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v1, 0x1

    :goto_2
    move v1, v3

    .line 165
    goto :goto_0

    .line 160
    :sswitch_a
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 161
    goto :goto_0

    .line 151
    :sswitch_b
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 152
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v1, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v1, 0x1

    :goto_3
    move v1, v3

    .line 153
    goto/16 :goto_0

    .line 147
    :sswitch_c
    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 148
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v1, 0x2

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v1, 0x1

    :goto_4
    move v1, v3

    .line 149
    goto/16 :goto_0

    .line 144
    :sswitch_d
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 145
    goto/16 :goto_0

    .line 140
    :sswitch_e
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 141
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v5, :cond_5

    add-int/lit8 v3, v1, 0x2

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v1, 0x1

    :goto_5
    move v1, v3

    .line 142
    goto/16 :goto_0

    .line 137
    :sswitch_f
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 138
    goto/16 :goto_0

    .line 134
    :sswitch_10
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 135
    goto/16 :goto_0

    .line 131
    :sswitch_11
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 132
    goto/16 :goto_0

    .line 127
    :sswitch_12
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 128
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v6, :cond_6

    add-int/lit8 v3, v1, 0x2

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v1, 0x1

    :goto_6
    move v1, v3

    .line 129
    goto/16 :goto_0

    .line 124
    :sswitch_13
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 125
    goto/16 :goto_0

    .line 121
    :sswitch_14
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 122
    goto/16 :goto_0

    .line 112
    :sswitch_15
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 113
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, v1, 0x2

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v1, 0x1

    :goto_7
    move v1, v3

    .line 114
    goto/16 :goto_0

    .line 109
    :sswitch_16
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 110
    goto/16 :goto_0

    .line 194
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v3

    :goto_8
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_16
        0x42 -> :sswitch_15
        0x43 -> :sswitch_14
        0x44 -> :sswitch_13
        0x45 -> :sswitch_16
        0x46 -> :sswitch_12
        0x47 -> :sswitch_11
        0x48 -> :sswitch_10
        0x49 -> :sswitch_16
        0x4a -> :sswitch_f
        0x4b -> :sswitch_e
        0x4c -> :sswitch_d
        0x4d -> :sswitch_c
        0x4e -> :sswitch_b
        0x4f -> :sswitch_16
        0x50 -> :sswitch_a
        0x51 -> :sswitch_9
        0x52 -> :sswitch_8
        0x53 -> :sswitch_7
        0x54 -> :sswitch_6
        0x55 -> :sswitch_16
        0x56 -> :sswitch_5
        0x57 -> :sswitch_4
        0x58 -> :sswitch_3
        0x59 -> :sswitch_16
        0x5a -> :sswitch_2
        0xc7 -> :sswitch_1
        0xd1 -> :sswitch_0
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 206
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 209
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .line 258
    iget v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "alternate"    # Z

    .line 249
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .line 266
    iput p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 267
    return-void
.end method
