.class public Lcom/samsung/android/media/SemExtendedFormat;
.super Ljava/lang/Object;
.source "SemExtendedFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemExtendedFormat$DataType;,
        Lcom/samsung/android/media/SemExtendedFormat$Options;,
        Lcom/samsung/android/media/SemExtendedFormat$KeyName;,
        Lcom/samsung/android/media/SemExtendedFormat$DataPosition;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;,
        Lcom/samsung/android/media/SemExtendedFormat$SEFViewerPackageName;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SEF_VERSION:Ljava/lang/String; = "1.19"

.field private static final TAG:Ljava/lang/String; = "SemExtendedFormat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1405
    return-void
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 8
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1830
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1831
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 1837
    .local v5, "dataFileName":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "SemExtendedFormat"

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v6, p3

    move p3, p4

    move-object p4, p1

    goto/16 :goto_5

    .line 1842
    :cond_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    move v6, p3

    move p3, p4

    move-object p4, p1

    goto/16 :goto_4

    .line 1847
    :cond_1
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    move v6, p3

    move p3, p4

    move-object p4, p1

    goto/16 :goto_3

    .line 1852
    :cond_2
    const/16 v3, 0x100

    if-eq p4, v3, :cond_a

    const/4 v3, 0x4

    if-ne p4, v3, :cond_3

    move-object v1, p1

    move v6, p3

    move p3, p4

    goto/16 :goto_2

    .line 1856
    :cond_3
    const/16 v3, 0x1000

    if-eq p4, v3, :cond_9

    const/4 v3, 0x5

    if-ne p4, v3, :cond_4

    move-object v1, p1

    move v6, p3

    move p3, p4

    goto :goto_1

    .line 1860
    :cond_4
    const/4 v3, 0x2

    if-ne p4, v3, :cond_5

    .line 1861
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v6, p3

    .end local p1    # "keyName":Ljava/lang/String;
    .end local p3    # "dataType":I
    .local v1, "keyName":Ljava/lang/String;
    .local v6, "dataType":I
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileAddTag(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    move-object p3, v1

    .end local v1    # "keyName":Ljava/lang/String;
    .local p3, "keyName":Ljava/lang/String;
    return p1

    .line 1863
    .end local v6    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "dataType":I
    :cond_5
    move v6, p3

    move-object p3, p1

    .end local p1    # "keyName":Ljava/lang/String;
    .restart local v6    # "dataType":I
    .local p3, "keyName":Ljava/lang/String;
    const/4 p1, 0x3

    if-ne p4, p1, :cond_6

    .line 1864
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    move-object v1, p3

    .end local p3    # "keyName":Ljava/lang/String;
    .restart local v1    # "keyName":Ljava/lang/String;
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileAddTag(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    .end local v1    # "keyName":Ljava/lang/String;
    .restart local p3    # "keyName":Ljava/lang/String;
    return p1

    .line 1866
    :cond_6
    if-eqz p4, :cond_8

    const/4 p1, 0x1

    if-ne p4, p1, :cond_7

    goto :goto_0

    .line 1870
    :cond_7
    const-string p1, "Unsupported Option Combination. Please check the option !!!!!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return v1

    .line 1867
    :cond_8
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    move v7, p4

    .end local p3    # "keyName":Ljava/lang/String;
    .end local p4    # "option":I
    .restart local v1    # "keyName":Ljava/lang/String;
    .local v7, "option":I
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    move p3, v7

    .end local v7    # "option":I
    .local p3, "option":I
    return p1

    .line 1856
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v6    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "dataType":I
    .restart local p4    # "option":I
    :cond_9
    move-object v1, p1

    move v6, p3

    move p3, p4

    .line 1858
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "option":I
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v6    # "dataType":I
    .local p3, "option":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    return p1

    .line 1852
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v6    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "dataType":I
    .restart local p4    # "option":I
    :cond_a
    move-object v1, p1

    move v6, p3

    move p3, p4

    .line 1854
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "option":I
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v6    # "dataType":I
    .local p3, "option":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    move-object p4, v1

    .end local v1    # "keyName":Ljava/lang/String;
    .local p4, "keyName":Ljava/lang/String;
    return p1

    .line 1847
    .end local v6    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "dataType":I
    .local p4, "option":I
    :cond_b
    move v6, p3

    move p3, p4

    move-object p4, p1

    .line 1848
    .end local p1    # "keyName":Ljava/lang/String;
    .restart local v6    # "dataType":I
    .local p3, "option":I
    .local p4, "keyName":Ljava/lang/String;
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid SEF Data File name: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    return v1

    .line 1842
    .end local v6    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "dataType":I
    .local p4, "option":I
    :cond_c
    move v6, p3

    move p3, p4

    move-object p4, p1

    .line 1843
    .end local p1    # "keyName":Ljava/lang/String;
    .restart local v6    # "dataType":I
    .local p3, "option":I
    .local p4, "keyName":Ljava/lang/String;
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    return v1

    .line 1837
    .end local v6    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "dataType":I
    .local p4, "option":I
    :cond_d
    move v6, p3

    move p3, p4

    move-object p4, p1

    .line 1838
    .end local p1    # "keyName":Ljava/lang/String;
    .restart local v6    # "dataType":I
    .local p3, "option":I
    .local p4, "keyName":Ljava/lang/String;
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    return v1
.end method

.method public static addData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 9
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1775
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1781
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "SemExtendedFormat"

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move-object v5, p2

    move v7, p3

    move p2, p4

    move-object p3, p1

    goto/16 :goto_5

    .line 1785
    :cond_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    move-object v5, p2

    move v7, p3

    move p2, p4

    move-object p3, p1

    goto/16 :goto_4

    .line 1789
    :cond_1
    if-eqz p2, :cond_b

    array-length v3, p2

    if-gtz v3, :cond_2

    move-object v5, p2

    move v7, p3

    move p2, p4

    move-object p3, p1

    goto/16 :goto_3

    .line 1794
    :cond_2
    const/16 v3, 0x100

    if-eq p4, v3, :cond_a

    const/4 v3, 0x4

    if-ne p4, v3, :cond_3

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move p2, p4

    goto/16 :goto_2

    .line 1798
    :cond_3
    const/16 v3, 0x1000

    if-eq p4, v3, :cond_9

    const/4 v3, 0x5

    if-ne p4, v3, :cond_4

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move p2, p4

    goto :goto_1

    .line 1802
    :cond_4
    const/4 v3, 0x2

    if-ne p4, v3, :cond_5

    .line 1803
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, p2

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    .end local p1    # "keyName":Ljava/lang/String;
    .end local p2    # "data":[B
    .end local p3    # "dataType":I
    .local v1, "keyName":Ljava/lang/String;
    .local v5, "data":[B
    .local v7, "dataType":I
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataAddTag(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    move-object p2, v1

    .end local v1    # "keyName":Ljava/lang/String;
    .local p2, "keyName":Ljava/lang/String;
    return p1

    .line 1805
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .restart local p3    # "dataType":I
    :cond_5
    move-object v5, p2

    move v7, p3

    move-object p2, p1

    .end local p1    # "keyName":Ljava/lang/String;
    .end local p3    # "dataType":I
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .local p2, "keyName":Ljava/lang/String;
    const/4 p1, 0x3

    if-ne p4, p1, :cond_6

    .line 1806
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, v5

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    .end local p2    # "keyName":Ljava/lang/String;
    .restart local v1    # "keyName":Ljava/lang/String;
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataAddTag(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    .end local v1    # "keyName":Ljava/lang/String;
    .restart local p2    # "keyName":Ljava/lang/String;
    return p1

    .line 1808
    :cond_6
    if-eqz p4, :cond_8

    const/4 p1, 0x1

    if-ne p4, p1, :cond_7

    goto :goto_0

    .line 1812
    :cond_7
    const-string p1, "Unsupported Option Combination. Please check the option !!!!!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    return v1

    .line 1809
    :cond_8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    array-length v6, v5

    const/4 v3, 0x0

    move-object v1, p2

    move v8, p4

    .end local p2    # "keyName":Ljava/lang/String;
    .end local p4    # "option":I
    .restart local v1    # "keyName":Ljava/lang/String;
    .local v8, "option":I
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    move p2, v8

    .end local v8    # "option":I
    .local p2, "option":I
    return p1

    .line 1798
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .restart local p3    # "dataType":I
    .restart local p4    # "option":I
    :cond_9
    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move p2, p4

    .line 1800
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p3    # "dataType":I
    .end local p4    # "option":I
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .local p2, "option":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, v5

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    return p1

    .line 1794
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .restart local p3    # "dataType":I
    .restart local p4    # "option":I
    :cond_a
    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move p2, p4

    .line 1796
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p3    # "dataType":I
    .end local p4    # "option":I
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .local p2, "option":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, v5

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    move-object p3, v1

    .end local v1    # "keyName":Ljava/lang/String;
    .local p3, "keyName":Ljava/lang/String;
    return p1

    .line 1789
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .local p3, "dataType":I
    .restart local p4    # "option":I
    :cond_b
    move-object v5, p2

    move v7, p3

    move p2, p4

    move-object p3, p1

    .line 1790
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "option":I
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .local p2, "option":I
    .local p3, "keyName":Ljava/lang/String;
    :goto_3
    const-string p1, "Invalid data"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    return v1

    .line 1785
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .local p3, "dataType":I
    .restart local p4    # "option":I
    :cond_c
    move-object v5, p2

    move v7, p3

    move p2, p4

    move-object p3, p1

    .line 1786
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "option":I
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .local p2, "option":I
    .local p3, "keyName":Ljava/lang/String;
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid key name: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    return v1

    .line 1781
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .local p3, "dataType":I
    .restart local p4    # "option":I
    :cond_d
    move-object v5, p2

    move v7, p3

    move p2, p4

    move-object p3, p1

    .line 1782
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "option":I
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .local p2, "option":I
    .local p3, "keyName":Ljava/lang/String;
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid file name: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    return v1
.end method

.method public static addData(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;[BII)J
    .locals 9
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .line 2000
    const-wide/16 v0, 0x0

    const-string v2, "SemExtendedFormat"

    if-nez p0, :cond_0

    .line 2001
    const-string v3, "pfd is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    return-wide v0

    .line 2004
    :cond_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_4

    .line 2008
    :cond_1
    if-eqz p2, :cond_b

    array-length v3, p2

    if-gtz v3, :cond_2

    goto/16 :goto_3

    .line 2013
    :cond_2
    const/16 v3, 0x100

    if-eq p4, v3, :cond_a

    const/4 v3, 0x4

    if-ne p4, v3, :cond_3

    goto/16 :goto_2

    .line 2017
    :cond_3
    const/16 v3, 0x1000

    if-eq p4, v3, :cond_9

    const/4 v3, 0x5

    if-ne p4, v3, :cond_4

    goto :goto_1

    .line 2021
    :cond_4
    const/4 v3, 0x2

    if-ne p4, v3, :cond_5

    .line 2022
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, p2

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataFileDescriptorAddTag(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I[BI[BIII)J

    move-result-wide v2

    return-wide v2

    .line 2024
    :cond_5
    const/4 v3, 0x3

    if-ne p4, v3, :cond_6

    .line 2025
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, p2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataFileDescriptorAddTag(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I[BI[BIII)J

    move-result-wide v2

    return-wide v2

    .line 2027
    :cond_6
    if-eqz p4, :cond_8

    const/4 v3, 0x1

    if-ne p4, v3, :cond_7

    goto :goto_0

    .line 2031
    :cond_7
    const-string v3, "Unsupported Option Combination. Please check the option !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    return-wide v0

    .line 2028
    :cond_8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    array-length v6, p2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataFilSEFeDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I[BI[BIII)J

    move-result-wide v2

    return-wide v2

    .line 2019
    :cond_9
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, p2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataFileDescriptorToMP4(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I[BI[BIII)J

    move-result-wide v2

    return-wide v2

    .line 2015
    :cond_a
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    array-length v6, p2

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataFileDescriptorToMP4(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I[BI[BIII)J

    move-result-wide v2

    return-wide v2

    .line 2009
    :cond_b
    :goto_3
    const-string v3, "Invalid data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    return-wide v0

    .line 2005
    :cond_c
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid key name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    return-wide v0
.end method

.method public static addData(Ljava/nio/ByteBuffer;Ljava/lang/String;[BII)J
    .locals 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .line 1926
    const-wide/16 v0, 0x0

    const-string v2, "SemExtendedFormat"

    if-nez p0, :cond_0

    .line 1927
    const-string v3, "buffer is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    return-wide v0

    .line 1930
    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_2

    .line 1934
    :cond_1
    if-eqz p2, :cond_5

    array-length v3, p2

    if-gtz v3, :cond_2

    goto :goto_1

    .line 1939
    :cond_2
    if-eqz p4, :cond_4

    const/4 v3, 0x1

    if-ne p4, v3, :cond_3

    goto :goto_0

    .line 1943
    :cond_3
    const-string v3, "Unsupported Option Combination. Please check the option !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const-string v3, "You can use only one of two - TYPE_SKIP_IF_EXISTS, TYPE_OVERWRITE_IF_EXISTS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    return-wide v0

    .line 1940
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    array-length v6, p2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataByteBufferAddTag(Ljava/nio/ByteBuffer;Ljava/lang/String;I[BI[BIII)J

    move-result-wide v2

    return-wide v2

    .line 1935
    :cond_5
    :goto_1
    const-string v3, "Invalid data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    return-wide v0

    .line 1931
    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid key name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    return-wide v0
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .line 2373
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p2    # "data":[B
    .end local p3    # "dataType":I
    .end local p4    # "option":I
    .local v0, "fileName":Ljava/lang/String;
    .local v1, "keyName":Ljava/lang/String;
    .local v2, "data":[B
    .local v4, "dataType":I
    .local v5, "option":I
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result p0

    return p0
.end method

.method public static addFastSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .line 2397
    const-string v0, "SemExtendedFormat"

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_3

    .line 2402
    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_2

    .line 2407
    :cond_1
    if-eqz p2, :cond_4

    array-length v2, p2

    if-gtz v2, :cond_2

    goto :goto_1

    .line 2412
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    array-length v1, p3

    :goto_0
    move v4, v1

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v2

    return v2

    .line 2408
    :cond_4
    :goto_1
    const-string v2, "Invalid data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    return v1

    .line 2403
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid key name: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    return v1

    .line 2398
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    return v1
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .line 2431
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p2    # "dataFileName":Ljava/lang/String;
    .end local p3    # "dataType":I
    .end local p4    # "option":I
    .local v0, "fileName":Ljava/lang/String;
    .local v1, "keyName":Ljava/lang/String;
    .local v2, "dataFileName":Ljava/lang/String;
    .local v4, "dataType":I
    .local v5, "option":I
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result p0

    return p0
.end method

.method public static addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .line 2455
    const-string v0, "SemExtendedFormat"

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_3

    .line 2460
    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_2

    .line 2465
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_1

    .line 2470
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    array-length v1, p3

    :goto_0
    move v4, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v2

    return v2

    .line 2466
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid SEF Data File name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    return v1

    .line 2461
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    return v1

    .line 2456
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    return v1
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2185
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p0    # "sefFile":Ljava/io/File;
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p2    # "dataFile":Ljava/io/File;
    .end local p3    # "dataType":I
    .end local p4    # "option":I
    .local v0, "sefFile":Ljava/io/File;
    .local v1, "keyName":Ljava/lang/String;
    .local v2, "dataFile":Ljava/io/File;
    .local v4, "dataType":I
    .local v5, "option":I
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I

    move-result p0

    return p0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;[BII)I
    .locals 8
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFile"    # Ljava/io/File;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2202
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 2209
    .local v5, "dataFileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v6, p4

    move v7, p5

    move v3, v2

    move-object p4, p3

    move-object p3, p1

    goto/16 :goto_6

    .line 2214
    :cond_0
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    move v6, p4

    move v7, p5

    move v3, v2

    move-object p4, p3

    move-object p3, p1

    goto/16 :goto_5

    .line 2219
    :cond_1
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    move v6, p4

    move v7, p5

    move v3, v2

    move-object p4, p3

    move-object p3, p1

    goto/16 :goto_4

    .line 2224
    :cond_2
    const/16 v1, 0x10

    if-ne p5, v1, :cond_4

    .line 2225
    move v3, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    array-length v1, p3

    move v4, v1

    :goto_0
    move-object v1, p1

    move-object v3, p3

    move v6, p4

    move v7, p5

    .end local p1    # "keyName":Ljava/lang/String;
    .end local p3    # "subdataInfo":[B
    .end local p4    # "dataType":I
    .end local p5    # "option":I
    .local v1, "keyName":Ljava/lang/String;
    .local v3, "subdataInfo":[B
    .local v6, "dataType":I
    .local v7, "option":I
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addFastSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    move p4, v7

    .end local v3    # "subdataInfo":[B
    .end local v7    # "option":I
    .restart local p3    # "subdataInfo":[B
    .local p4, "option":I
    return p1

    .line 2227
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v6    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p4, "dataType":I
    .restart local p5    # "option":I
    :cond_4
    move-object v1, p1

    move v6, p4

    move p4, p5

    move v3, v2

    .end local p1    # "keyName":Ljava/lang/String;
    .end local p5    # "option":I
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v6    # "dataType":I
    .local p4, "option":I
    const/16 p1, 0x100

    if-ne p4, p1, :cond_6

    .line 2228
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    array-length p1, p3

    move v4, p1

    :goto_1
    const/4 v7, 0x0

    move-object v3, p3

    .end local p3    # "subdataInfo":[B
    .restart local v3    # "subdataInfo":[B
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    .end local v3    # "subdataInfo":[B
    .restart local p3    # "subdataInfo":[B
    return p1

    .line 2230
    :cond_6
    const/16 p1, 0x1000

    if-ne p4, p1, :cond_8

    .line 2231
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    array-length p1, p3

    move v4, p1

    :goto_2
    const/4 v7, 0x1

    move-object v3, p3

    .end local p3    # "subdataInfo":[B
    .restart local v3    # "subdataInfo":[B
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFileToMP4(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    .end local v3    # "subdataInfo":[B
    .restart local p3    # "subdataInfo":[B
    return p1

    .line 2234
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_9

    move v4, v3

    goto :goto_3

    :cond_9
    array-length p1, p3

    move v4, p1

    :goto_3
    move-object v3, p3

    move v7, p4

    .end local p3    # "subdataInfo":[B
    .end local p4    # "option":I
    .restart local v3    # "subdataInfo":[B
    .restart local v7    # "option":I
    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result p1

    move-object p3, v1

    move-object p4, v3

    .end local v1    # "keyName":Ljava/lang/String;
    .end local v3    # "subdataInfo":[B
    .local p3, "keyName":Ljava/lang/String;
    .local p4, "subdataInfo":[B
    return p1

    .line 2219
    .end local v6    # "dataType":I
    .end local v7    # "option":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "subdataInfo":[B
    .local p4, "dataType":I
    .restart local p5    # "option":I
    :cond_a
    move v6, p4

    move v7, p5

    move v3, v2

    move-object p4, p3

    move-object p3, p1

    .line 2220
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p5    # "option":I
    .restart local v6    # "dataType":I
    .restart local v7    # "option":I
    .local p3, "keyName":Ljava/lang/String;
    .local p4, "subdataInfo":[B
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid SEF Data File name: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    return v3

    .line 2214
    .end local v6    # "dataType":I
    .end local v7    # "option":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "subdataInfo":[B
    .local p4, "dataType":I
    .restart local p5    # "option":I
    :cond_b
    move v6, p4

    move v7, p5

    move v3, v2

    move-object p4, p3

    move-object p3, p1

    .line 2215
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p5    # "option":I
    .restart local v6    # "dataType":I
    .restart local v7    # "option":I
    .local p3, "keyName":Ljava/lang/String;
    .local p4, "subdataInfo":[B
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid key name: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    return v3

    .line 2209
    .end local v6    # "dataType":I
    .end local v7    # "option":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p3, "subdataInfo":[B
    .local p4, "dataType":I
    .restart local p5    # "option":I
    :cond_c
    move v6, p4

    move v7, p5

    move v3, v2

    move-object p4, p3

    move-object p3, p1

    .line 2210
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p5    # "option":I
    .restart local v6    # "dataType":I
    .restart local v7    # "option":I
    .local p3, "keyName":Ljava/lang/String;
    .local p4, "subdataInfo":[B
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid file name: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    return v3
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2121
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p0    # "sefFile":Ljava/io/File;
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p2    # "data":[B
    .end local p3    # "dataType":I
    .end local p4    # "option":I
    .local v0, "sefFile":Ljava/io/File;
    .local v1, "keyName":Ljava/lang/String;
    .local v2, "data":[B
    .local v4, "dataType":I
    .local v5, "option":I
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I

    move-result p0

    return p0
.end method

.method public static addSEFData(Ljava/io/File;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2138
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2144
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move-object v5, p2

    move v7, p4

    move v8, p5

    move v3, v2

    move-object p2, p1

    goto/16 :goto_6

    .line 2148
    :cond_0
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    move-object v5, p2

    move v7, p4

    move v8, p5

    move v3, v2

    move-object p2, p1

    goto/16 :goto_5

    .line 2152
    :cond_1
    if-eqz p2, :cond_a

    array-length v3, p2

    if-gtz v3, :cond_2

    move-object v5, p2

    move v7, p4

    move v8, p5

    move v3, v2

    move-object p2, p1

    goto/16 :goto_4

    .line 2157
    :cond_2
    const/16 v1, 0x10

    if-ne p5, v1, :cond_4

    .line 2158
    move v3, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    array-length v1, p3

    move v4, v1

    :goto_0
    array-length v6, p2

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    .end local p1    # "keyName":Ljava/lang/String;
    .end local p2    # "data":[B
    .end local p3    # "subdataInfo":[B
    .end local p4    # "dataType":I
    .end local p5    # "option":I
    .local v1, "keyName":Ljava/lang/String;
    .local v3, "subdataInfo":[B
    .local v5, "data":[B
    .local v7, "dataType":I
    .local v8, "option":I
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    move-object p2, v3

    move p3, v8

    .end local v3    # "subdataInfo":[B
    .end local v8    # "option":I
    .local p2, "subdataInfo":[B
    .local p3, "option":I
    return p1

    .line 2160
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .local p3, "subdataInfo":[B
    .restart local p4    # "dataType":I
    .restart local p5    # "option":I
    :cond_4
    move-object v1, p1

    move-object v5, p2

    move-object p2, p3

    move v7, p4

    move p3, p5

    move v3, v2

    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "dataType":I
    .end local p5    # "option":I
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .local p2, "subdataInfo":[B
    .local p3, "option":I
    const/16 p1, 0x100

    if-ne p3, p1, :cond_6

    .line 2161
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p2, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    array-length p1, p2

    move v4, p1

    :goto_1
    array-length v6, v5

    const/4 v8, 0x0

    move-object v3, p2

    .end local p2    # "subdataInfo":[B
    .restart local v3    # "subdataInfo":[B
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    .end local v3    # "subdataInfo":[B
    .restart local p2    # "subdataInfo":[B
    return p1

    .line 2163
    :cond_6
    const/16 p1, 0x1000

    if-ne p3, p1, :cond_8

    .line 2164
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p2, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    array-length p1, p2

    move v4, p1

    :goto_2
    array-length v6, v5

    const/4 v8, 0x1

    move-object v3, p2

    .end local p2    # "subdataInfo":[B
    .restart local v3    # "subdataInfo":[B
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataToMP4(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    .end local v3    # "subdataInfo":[B
    .restart local p2    # "subdataInfo":[B
    return p1

    .line 2167
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p2, :cond_9

    move v4, v3

    goto :goto_3

    :cond_9
    array-length p1, p2

    move v4, p1

    :goto_3
    array-length v6, v5

    move-object v3, p2

    move v8, p3

    .end local p2    # "subdataInfo":[B
    .end local p3    # "option":I
    .restart local v3    # "subdataInfo":[B
    .restart local v8    # "option":I
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result p1

    move-object p2, v1

    move-object p3, v3

    .end local v1    # "keyName":Ljava/lang/String;
    .end local v3    # "subdataInfo":[B
    .local p2, "keyName":Ljava/lang/String;
    .local p3, "subdataInfo":[B
    return p1

    .line 2152
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .end local v8    # "option":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .restart local p4    # "dataType":I
    .restart local p5    # "option":I
    :cond_a
    move-object v5, p2

    move v7, p4

    move v8, p5

    move v3, v2

    move-object p2, p1

    .line 2153
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "dataType":I
    .end local p5    # "option":I
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .restart local v8    # "option":I
    .local p2, "keyName":Ljava/lang/String;
    :goto_4
    const-string p1, "Invalid data"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    return v3

    .line 2148
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .end local v8    # "option":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .restart local p4    # "dataType":I
    .restart local p5    # "option":I
    :cond_b
    move-object v5, p2

    move v7, p4

    move v8, p5

    move v3, v2

    move-object p2, p1

    .line 2149
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "dataType":I
    .end local p5    # "option":I
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .restart local v8    # "option":I
    .local p2, "keyName":Ljava/lang/String;
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid key name: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    return v3

    .line 2144
    .end local v5    # "data":[B
    .end local v7    # "dataType":I
    .end local v8    # "option":I
    .restart local p1    # "keyName":Ljava/lang/String;
    .local p2, "data":[B
    .restart local p4    # "dataType":I
    .restart local p5    # "option":I
    :cond_c
    move-object v5, p2

    move v7, p4

    move v8, p5

    move v3, v2

    move-object p2, p1

    .line 2145
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p4    # "dataType":I
    .end local p5    # "option":I
    .restart local v5    # "data":[B
    .restart local v7    # "dataType":I
    .restart local v8    # "option":I
    .local p2, "keyName":Ljava/lang/String;
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid file name: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    return v3
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .line 2255
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p2    # "data":[B
    .end local p3    # "dataType":I
    .end local p4    # "option":I
    .local v0, "fileName":Ljava/lang/String;
    .local v1, "keyName":Ljava/lang/String;
    .local v2, "data":[B
    .local v4, "dataType":I
    .local v5, "option":I
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I

    move-result p0

    return p0
.end method

.method public static addSEFData(Ljava/lang/String;Ljava/lang/String;[B[BII)I
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .line 2278
    const-string v0, "SemExtendedFormat"

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 2282
    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_3

    .line 2286
    :cond_1
    if-eqz p2, :cond_6

    array-length v2, p2

    if-gtz v2, :cond_2

    goto :goto_2

    .line 2291
    :cond_2
    const/16 v0, 0x10

    if-ne p5, v0, :cond_4

    .line 2292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    array-length v1, p3

    :goto_0
    move v4, v1

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addFastSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v2

    return v2

    .line 2295
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    array-length v1, p3

    :goto_1
    move v4, v1

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFData(Ljava/lang/String;Ljava/lang/String;I[BI[BIII)I

    move-result v2

    return v2

    .line 2287
    :cond_6
    :goto_2
    const-string v2, "Invalid data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    return v1

    .line 2283
    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid key name: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    return v1

    .line 2279
    :cond_8
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file name: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    return v1
.end method

.method public static addSEFDataByteBufferAddTag(Ljava/nio/ByteBuffer;Ljava/lang/String;I[BI[BIII)J
    .locals 17
    .param p0, "Buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "SEFname"    # Ljava/lang/String;
    .param p2, "SEFname_len"    # I
    .param p3, "data_sub_info"    # [B
    .param p4, "data_sub_info_len"    # I
    .param p5, "data"    # [B
    .param p6, "data_len"    # I
    .param p7, "data_type"    # I
    .param p8, "option"    # I

    .line 1895
    const-wide/16 v0, 0x0

    .line 1896
    .local v0, "Ret":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1897
    .local v2, "BufferArray":[B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v5, v3

    .line 1898
    .local v5, "offset":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    .line 1899
    .local v3, "AllocSize":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    int-to-long v7, v7

    .line 1901
    .local v7, "StartOffset":J
    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-gtz v11, :cond_0

    .line 1902
    return-wide v9

    .line 1904
    :cond_0
    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    invoke-static/range {v2 .. v16}, Lcom/samsung/android/media/SEFJNI;->addSEFDataBufferAddTag([BJJJLjava/lang/String;I[BI[BIII)J

    move-result-wide v0

    .line 1905
    long-to-int v9, v0

    move-object/from16 v10, p0

    invoke-virtual {v10, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1907
    return-wide v0
.end method

.method public static addSEFDataFilSEFeDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I[BI[BIII)J
    .locals 9
    .param p0, "Pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "SEFname"    # Ljava/lang/String;
    .param p2, "SEFname_len"    # I
    .param p3, "data_sub_info"    # [B
    .param p4, "data_sub_info_len"    # I
    .param p5, "data"    # [B
    .param p6, "data_len"    # I
    .param p7, "data_type"    # I
    .param p8, "option"    # I

    .line 2055
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFd(ILjava/lang/String;I[BI[BIII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "dataType"    # I
    .param p4, "option"    # I

    .line 2315
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "keyName":Ljava/lang/String;
    .end local p2    # "dataFileName":Ljava/lang/String;
    .end local p3    # "dataType":I
    .end local p4    # "option":I
    .local v0, "fileName":Ljava/lang/String;
    .local v1, "keyName":Ljava/lang/String;
    .local v2, "dataFileName":Ljava/lang/String;
    .local v4, "dataType":I
    .local v5, "option":I
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/media/SemExtendedFormat;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result p0

    return p0
.end method

.method public static addSEFDataFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dataFileName"    # Ljava/lang/String;
    .param p3, "subdataInfo"    # [B
    .param p4, "dataType"    # I
    .param p5, "option"    # I

    .line 2339
    const-string v0, "SemExtendedFormat"

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_3

    .line 2344
    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_2

    .line 2349
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_1

    .line 2354
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    array-length v1, p3

    :goto_0
    move v4, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFile(Ljava/lang/String;Ljava/lang/String;I[BILjava/lang/String;II)I

    move-result v2

    return v2

    .line 2350
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid SEF Data File name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    return v1

    .line 2345
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    return v1

    .line 2340
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid file name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    return v1
.end method

.method public static addSEFDataFileDescriptorAddTag(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I[BI[BIII)J
    .locals 9
    .param p0, "Pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "SEFname"    # Ljava/lang/String;
    .param p2, "SEFname_len"    # I
    .param p3, "data_sub_info"    # [B
    .param p4, "data_sub_info_len"    # I
    .param p5, "data"    # [B
    .param p6, "data_len"    # I
    .param p7, "data_type"    # I
    .param p8, "option"    # I

    .line 2078
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFdAddTag(ILjava/lang/String;I[BI[BIII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static addSEFDataFileDescriptorToMP4(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I[BI[BIII)J
    .locals 9
    .param p0, "Pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "SEFname"    # Ljava/lang/String;
    .param p2, "SEFname_len"    # I
    .param p3, "data_sub_info"    # [B
    .param p4, "data_sub_info_len"    # I
    .param p5, "data"    # [B
    .param p6, "data_len"    # I
    .param p7, "data_type"    # I
    .param p8, "option"    # I

    .line 2101
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFdToMP4(ILjava/lang/String;I[BI[BIII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyNames"    # [Ljava/lang/String;
    .param p2, "dataFileNames"    # [Ljava/lang/String;
    .param p3, "dataTypes"    # [I
    .param p4, "option"    # I

    .line 2492
    array-length v6, p1

    .line 2493
    .local v6, "dataCount":I
    array-length v0, p2

    const-string v1, " )"

    const-string v2, "Data Count is different. ( keyNames data count= "

    const-string v3, "SemExtendedFormat"

    if-eq v6, v0, :cond_0

    .line 2494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dataFileNames data count= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2495
    :cond_0
    array-length v0, p3

    if-eq v6, v0, :cond_1

    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dataTypes data count= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object p1, p2

    move-object v4, p3

    move v5, p4

    goto :goto_2

    .line 2504
    :cond_2
    array-length v0, p1

    new-array v2, v0, [I

    .line 2505
    .local v2, "keynamesLength":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 2506
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v2, v0

    .line 2505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2509
    .end local v0    # "i":I
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "keyNames":[Ljava/lang/String;
    .end local p2    # "dataFileNames":[Ljava/lang/String;
    .end local p3    # "dataTypes":[I
    .end local p4    # "option":I
    .local v0, "fileName":Ljava/lang/String;
    .local v1, "keyNames":[Ljava/lang/String;
    .local v3, "dataFileNames":[Ljava/lang/String;
    .local v4, "dataTypes":[I
    .local v5, "option":I
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/media/SEFJNI;->addSEFDataFiles(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[III)I

    move-result p0

    move-object p1, v3

    .end local v3    # "dataFileNames":[Ljava/lang/String;
    .local p1, "dataFileNames":[Ljava/lang/String;
    return p0

    .line 2499
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "keyNames":[Ljava/lang/String;
    .end local v2    # "keynamesLength":[I
    .end local v4    # "dataTypes":[I
    .end local v5    # "option":I
    .restart local p0    # "fileName":Ljava/lang/String;
    .local p1, "keyNames":[Ljava/lang/String;
    .restart local p2    # "dataFileNames":[Ljava/lang/String;
    .restart local p3    # "dataTypes":[I
    .restart local p4    # "option":I
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object p1, p2

    move-object v4, p3

    move v5, p4

    .line 2500
    .end local p0    # "fileName":Ljava/lang/String;
    .end local p2    # "dataFileNames":[Ljava/lang/String;
    .end local p3    # "dataTypes":[I
    .end local p4    # "option":I
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "keyNames":[Ljava/lang/String;
    .restart local v4    # "dataTypes":[I
    .restart local v5    # "option":I
    .local p1, "dataFileNames":[Ljava/lang/String;
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid file name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const/4 p0, 0x0

    return p0
.end method

.method public static clearFastSEFData(Ljava/lang/String;)I
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 2812
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2816
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2813
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExtendedFormat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    const/4 v0, 0x0

    return v0
.end method

.method public static clearSEFData(Ljava/lang/String;)I
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 2792
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2796
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2793
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExtendedFormat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const/4 v0, 0x0

    return v0
.end method

.method public static compact(Ljava/io/File;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2830
    const-string v0, "Invalid_Data"

    invoke-static {p0, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2831
    const/4 v0, 0x1

    return v0

    .line 2833
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static convertImageToMP4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;

    .line 3845
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3846
    .local v0, "sefFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3847
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->getMajorDataType(Ljava/lang/String;)I

    move-result v1

    .line 3849
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 3880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This type of file is not yet supported. type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemExtendedFormat"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3851
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/media/MotionPhotoConverter;->getInstance()Lcom/samsung/android/media/MotionPhotoConverter;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/media/MotionPhotoConverter;->convertToMp4(Ljava/lang/String;Ljava/lang/String;)V

    .line 3852
    nop

    .line 3884
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa30
        :pswitch_0
    .end packed-switch
.end method

.method public static copyAllData(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p0, "srcPfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "dstPfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3768
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFDataFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    return v0
.end method

.method public static copyAllData(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3738
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3739
    .local v0, "srcFileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 3745
    .local v1, "dstFileName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SemExtendedFormat"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 3750
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    .line 3755
    :cond_1
    invoke-static {v0, v1}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 3751
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dst file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    return v2

    .line 3746
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid src file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    return v2
.end method

.method public static copyAllSEFData(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3782
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3783
    .local v0, "srcFileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 3789
    .local v1, "dstFileName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SemExtendedFormat"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 3794
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    .line 3799
    :cond_1
    invoke-static {v0, v1}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 3795
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dst file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    return v2

    .line 3790
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid src file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    return v2
.end method

.method public static copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "srcFileName"    # Ljava/lang/String;
    .param p1, "dstFileName"    # Ljava/lang/String;

    .line 3818
    const/4 v0, 0x0

    const-string v1, "SemExtendedFormat"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 3823
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 3828
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->copyAllSEFData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3824
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dst file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    return v0

    .line 3819
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid src file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    return v0
.end method

.method public static deleteAllData(Landroid/os/ParcelFileDescriptor;)Z
    .locals 2
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2609
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->clearSEFDataFileDescriptor(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2610
    return v1

    .line 2612
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deleteAllData(Ljava/io/File;)Z
    .locals 4
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2583
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2588
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 2593
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2594
    return v3

    .line 2596
    :cond_1
    return v1

    .line 2589
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemExtendedFormat"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    return v1
.end method

.method public static deleteAllSEFData(Ljava/io/File;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2739
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteAllSEFData(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static deleteAllSEFData(Ljava/io/File;I)Z
    .locals 4
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2752
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2757
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 2762
    :cond_0
    const/16 v2, 0x10

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2

    .line 2763
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->fastClearSEFData(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 2764
    return v3

    .line 2766
    :cond_1
    return v1

    .line 2769
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->clearSEFData(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 2770
    return v3

    .line 2772
    :cond_3
    return v1

    .line 2758
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemExtendedFormat"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    return v1
.end method

.method public static deleteData(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 3
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2563
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2568
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->deleteSEFDataFileDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2569
    return v2

    .line 2571
    :cond_1
    return v0

    .line 2564
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    return v0
.end method

.method public static deleteData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2531
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2536
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 2541
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 2546
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 2547
    return v3

    .line 2549
    :cond_2
    return v2

    .line 2542
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    return v2

    .line 2537
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    return v2
.end method

.method public static deleteFastSEFData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .line 2713
    const-string v0, "SemExtendedFormat"

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 2718
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 2723
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2724
    return v2

    .line 2726
    :cond_2
    return v1

    .line 2719
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    return v1

    .line 2714
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    return v1
.end method

.method public static deleteSEFData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .line 2687
    const/4 v0, 0x0

    const-string v1, "SemExtendedFormat"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 2692
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 2697
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 2693
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    return v0

    .line 2688
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    return v0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2627
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static deleteSEFData(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2641
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2646
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 2651
    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 2656
    :cond_1
    const/16 v1, 0x10

    const/4 v3, 0x1

    if-ne p2, v1, :cond_3

    .line 2657
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->fastDeleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 2658
    return v3

    .line 2660
    :cond_2
    return v2

    .line 2663
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/media/SEFJNI;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 2664
    return v3

    .line 2666
    :cond_4
    return v2

    .line 2652
    :cond_5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    return v2

    .line 2647
    :cond_6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    return v2
.end method

.method public static getData(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)[B
    .locals 10
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2988
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_3

    .line 2993
    :cond_0
    const/4 v1, 0x0

    .line 2994
    .local v1, "sefData":[B
    const/4 v2, 0x0

    .line 2997
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v3

    .line 2998
    invoke-static {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat;->getDataPosition(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    move-result-object v3

    .line 2999
    .local v3, "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    if-nez v3, :cond_1

    .line 3000
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3001
    nop

    .line 3028
    nop

    .line 3029
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3001
    return-object v0

    .line 3004
    :cond_1
    :try_start_1
    iget-wide v4, v3, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    .line 3009
    .local v4, "startOffset":J
    iget-wide v6, v3, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    long-to-int v6, v6

    new-array v6, v6, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v6

    .line 3010
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 3011
    nop

    .line 3028
    nop

    .line 3029
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3011
    return-object v0

    .line 3013
    :cond_2
    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3014
    .local v8, "skipCheck":J
    cmp-long v6, v8, v6

    if-nez v6, :cond_3

    .line 3015
    nop

    .line 3028
    nop

    .line 3029
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3015
    return-object v0

    .line 3020
    .end local v8    # "skipCheck":J
    :cond_3
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3021
    .local v6, "length":I
    if-nez v6, :cond_4

    .line 3022
    nop

    .line 3028
    nop

    .line 3029
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3022
    return-object v0

    .line 3028
    .end local v3    # "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .end local v4    # "startOffset":J
    .end local v6    # "length":I
    :cond_4
    nop

    .line 3029
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 3028
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 3025
    :catch_0
    move-exception v0

    .line 3026
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3028
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_5

    .line 3029
    goto :goto_0

    .line 3034
    :cond_5
    :goto_1
    return-object v1

    .line 3028
    :goto_2
    if-eqz v2, :cond_6

    .line 3029
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3032
    :cond_6
    throw v0

    .line 2989
    .end local v1    # "sefData":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    return-object v0
.end method

.method public static getData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 11
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2917
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2922
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_4

    .line 2927
    :cond_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_3

    .line 2932
    :cond_1
    const/4 v1, 0x0

    .line 2933
    .local v1, "sefData":[B
    const/4 v3, 0x0

    .line 2936
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 2937
    invoke-static {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat;->getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    move-result-object v4

    .line 2938
    .local v4, "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    if-nez v4, :cond_2

    .line 2939
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2940
    nop

    .line 2968
    nop

    .line 2969
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2940
    return-object v2

    .line 2943
    :cond_2
    :try_start_1
    iget-wide v5, v4, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    .line 2949
    .local v5, "startOffset":J
    iget-wide v7, v4, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    long-to-int v7, v7

    new-array v7, v7, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v7

    .line 2950
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    .line 2951
    nop

    .line 2968
    nop

    .line 2969
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2951
    return-object v2

    .line 2953
    :cond_3
    :try_start_2
    invoke-virtual {v3, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2954
    .local v9, "skipCheck":J
    cmp-long v7, v9, v7

    if-nez v7, :cond_4

    .line 2955
    nop

    .line 2968
    nop

    .line 2969
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2955
    return-object v2

    .line 2960
    .end local v9    # "skipCheck":J
    :cond_4
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2961
    .local v7, "length":I
    if-nez v7, :cond_5

    .line 2962
    nop

    .line 2968
    nop

    .line 2969
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2962
    return-object v2

    .line 2968
    .end local v4    # "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .end local v5    # "startOffset":J
    .end local v7    # "length":I
    :cond_5
    nop

    .line 2969
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 2968
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 2965
    :catch_0
    move-exception v2

    .line 2966
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2968
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_6

    .line 2969
    goto :goto_0

    .line 2974
    :cond_6
    :goto_1
    return-object v1

    .line 2968
    :goto_2
    if-eqz v3, :cond_7

    .line 2969
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2972
    :cond_7
    throw v2

    .line 2928
    .end local v1    # "sefData":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_8
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    return-object v2

    .line 2923
    :cond_9
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    return-object v2
.end method

.method public static getDataCount(Ljava/io/File;)I
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3045
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3046
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 3051
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v1

    .line 3057
    .local v1, "ret":I
    return v1

    .line 3047
    .end local v1    # "ret":I
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    const/4 v1, -0x1

    return v1
.end method

.method public static getDataPosition(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .locals 5
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3170
    const-string v0, "SemExtendedFormat"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 3175
    :cond_0
    move-object v2, v1

    check-cast v2, [J

    .line 3176
    .local v2, "posArray":[J
    new-instance v3, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    invoke-direct {v3}, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;-><init>()V

    .line 3178
    .local v3, "position":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPositionFileDescriptor(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)[J

    move-result-object v2

    .line 3179
    if-nez v2, :cond_1

    .line 3180
    const-string v4, "No SEF data is found in file."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    return-object v1

    .line 3183
    :cond_1
    const/4 v0, 0x0

    aget-wide v0, v2, v0

    iput-wide v0, v3, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    .line 3184
    const/4 v0, 0x1

    aget-wide v0, v2, v0

    iput-wide v0, v3, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    .line 3185
    return-object v3

    .line 3171
    .end local v2    # "posArray":[J
    .end local v3    # "position":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    return-object v1
.end method

.method public static getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3131
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3136
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 3141
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 3146
    :cond_1
    move-object v3, v2

    check-cast v3, [J

    .line 3147
    .local v3, "posArray":[J
    new-instance v4, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    invoke-direct {v4}, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;-><init>()V

    .line 3149
    .local v4, "position":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v3

    .line 3150
    if-nez v3, :cond_2

    .line 3151
    const-string v5, "No SEF data is found in file."

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    return-object v2

    .line 3154
    :cond_2
    const/4 v1, 0x0

    aget-wide v1, v3, v1

    iput-wide v1, v4, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    .line 3155
    const/4 v1, 0x1

    aget-wide v1, v3, v1

    iput-wide v1, v4, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    .line 3156
    return-object v4

    .line 3142
    .end local v3    # "posArray":[J
    .end local v4    # "position":Lcom/samsung/android/media/SemExtendedFormat$DataPosition;
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    return-object v2

    .line 3137
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    return-object v2
.end method

.method public static getDataPositionArray(Ljava/io/File;Ljava/lang/String;)[J
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3197
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3202
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 3207
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 3212
    :cond_1
    move-object v3, v2

    check-cast v3, [J

    .line 3214
    .local v3, "PositionData":[J
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v3

    .line 3215
    if-nez v3, :cond_2

    .line 3216
    const-string v4, "No SEF data matching to given keyName is found in file."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    return-object v2

    .line 3220
    :cond_2
    return-object v3

    .line 3208
    .end local v3    # "PositionData":[J
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    return-object v2

    .line 3203
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    return-object v2
.end method

.method public static getDataType(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3069
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3074
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "SemExtendedFormat"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 3079
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 3084
    :cond_1
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3080
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    return v1

    .line 3075
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    return v1
.end method

.method public static getDataTypeArray(Landroid/os/ParcelFileDescriptor;)[I
    .locals 1
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3118
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypesFileDescriptor(Landroid/os/ParcelFileDescriptor;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getDataTypeArray(Ljava/io/File;)[I
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3096
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3101
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 3106
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1

    .line 3102
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getKeyNameArray(Landroid/os/ParcelFileDescriptor;)[Ljava/lang/String;
    .locals 1
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2877
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesFileDescriptor(Landroid/os/ParcelFileDescriptor;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyNameArray(Ljava/io/File;)[Ljava/lang/String;
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2855
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2860
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2865
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2861
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getKeyNameArray(Ljava/io/File;I)[Ljava/lang/String;
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation

    .line 2894
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2899
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 2904
    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2900
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Data Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMajorDataType(Ljava/lang/String;)I
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .line 3687
    const-string v0, "SemExtendedFormat"

    const/4 v1, -0x1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_2

    .line 3692
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 3693
    return v1

    .line 3696
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3697
    .local v2, "sefFile":Ljava/io/File;
    invoke-static {v2}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v3

    .line 3698
    .local v3, "dataTypes":[I
    if-nez v3, :cond_2

    .line 3699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No data type has been found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    return v1

    .line 3703
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-le v4, v1, :cond_4

    .line 3704
    aget v5, v3, v4

    const/16 v6, 0x800

    if-lt v5, v6, :cond_3

    aget v5, v3, v4

    const/16 v6, 0x4000

    if-gt v5, v6, :cond_3

    aget v5, v3, v4

    and-int/lit8 v5, v5, 0xf

    if-nez v5, :cond_3

    .line 3707
    aget v0, v3, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3703
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3713
    .end local v2    # "sefFile":Ljava/io/File;
    .end local v3    # "dataTypes":[I
    .end local v4    # "i":I
    :cond_4
    goto :goto_1

    .line 3710
    :catch_0
    move-exception v2

    .line 3712
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3715
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No major data type has been found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    return v1

    .line 3688
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    return v1
.end method

.method public static getRequiredBufferSize(JIJJ)J
    .locals 9
    .param p0, "orgDataSize"    # J
    .param p2, "dataCount"    # I
    .param p3, "totalDataSize"    # J
    .param p5, "totalkeyNameSize"    # J

    .line 1965
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-string v5, "SemExtendedFormat"

    if-gtz v2, :cond_0

    .line 1966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid orgDataSize : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    return-wide v0

    .line 1969
    :cond_0
    if-gtz p2, :cond_1

    .line 1970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid dataCount : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return-wide v0

    .line 1973
    :cond_1
    cmp-long v2, p3, v0

    if-gtz v2, :cond_2

    .line 1974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid totalDataSize : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    return-wide v0

    .line 1977
    :cond_2
    cmp-long v2, p5, v0

    if-gtz v2, :cond_3

    .line 1978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid totalkeyNameSize : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    return-wide v0

    .line 1982
    :cond_3
    const-wide/16 v5, 0x0

    move-wide v0, p0

    move v2, p2

    move-wide v3, p3

    move-wide v7, p5

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/media/SEFJNI;->getSEFBufferAllocSize(JIJJJ)J

    move-result-wide v5

    return-wide v5
.end method

.method public static getSEFData(Ljava/io/File;Ljava/lang/String;)[B
    .locals 11
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3395
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3400
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_4

    .line 3405
    :cond_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_3

    .line 3410
    :cond_1
    const/4 v1, 0x0

    .line 3411
    .local v1, "sefData":[B
    const/4 v3, 0x0

    .line 3414
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 3415
    invoke-static {v0, p1}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;

    move-result-object v4

    .line 3416
    .local v4, "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    if-nez v4, :cond_2

    .line 3417
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3418
    nop

    .line 3445
    nop

    .line 3446
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3418
    return-object v2

    .line 3421
    :cond_2
    :try_start_1
    iget-wide v5, v4, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->offset:J

    .line 3426
    .local v5, "startOffset":J
    iget-wide v7, v4, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->length:J

    long-to-int v7, v7

    new-array v7, v7, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v7

    .line 3427
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    .line 3428
    nop

    .line 3445
    nop

    .line 3446
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3428
    return-object v2

    .line 3430
    :cond_3
    :try_start_2
    invoke-virtual {v3, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3431
    .local v9, "skipCheck":J
    cmp-long v7, v9, v7

    if-nez v7, :cond_4

    .line 3432
    nop

    .line 3445
    nop

    .line 3446
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3432
    return-object v2

    .line 3437
    .end local v9    # "skipCheck":J
    :cond_4
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3438
    .local v7, "length":I
    if-nez v7, :cond_5

    .line 3439
    nop

    .line 3445
    nop

    .line 3446
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3439
    return-object v2

    .line 3445
    .end local v4    # "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    .end local v5    # "startOffset":J
    .end local v7    # "length":I
    :cond_5
    nop

    .line 3446
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 3445
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 3442
    :catch_0
    move-exception v2

    .line 3443
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3445
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_6

    .line 3446
    goto :goto_0

    .line 3451
    :cond_6
    :goto_1
    return-object v1

    .line 3445
    :goto_2
    if-eqz v3, :cond_7

    .line 3446
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3449
    :cond_7
    throw v2

    .line 3406
    .end local v1    # "sefData":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_8
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    return-object v2

    .line 3401
    :cond_9
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    return-object v2
.end method

.method public static getSEFData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3471
    const-string v0, "SemExtendedFormat"

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 3476
    :cond_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_3

    .line 3481
    :cond_1
    const/4 v0, 0x0

    .line 3482
    .local v0, "sefData":[B
    const/4 v2, 0x0

    .line 3484
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 3485
    invoke-static {p0, p1}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;

    move-result-object v3

    .line 3486
    .local v3, "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    if-nez v3, :cond_2

    .line 3487
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3488
    nop

    .line 3515
    nop

    .line 3516
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3488
    return-object v1

    .line 3491
    :cond_2
    :try_start_1
    iget-wide v4, v3, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->offset:J

    .line 3496
    .local v4, "startOffset":J
    iget-wide v6, v3, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->length:J

    long-to-int v6, v6

    new-array v6, v6, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 3497
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    .line 3498
    nop

    .line 3515
    nop

    .line 3516
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3498
    return-object v1

    .line 3500
    :cond_3
    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3501
    .local v8, "skipCheck":J
    cmp-long v6, v8, v6

    if-nez v6, :cond_4

    .line 3502
    nop

    .line 3515
    nop

    .line 3516
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3502
    return-object v1

    .line 3507
    .end local v8    # "skipCheck":J
    :cond_4
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3508
    .local v6, "length":I
    if-nez v6, :cond_5

    .line 3509
    nop

    .line 3515
    nop

    .line 3516
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3509
    return-object v1

    .line 3515
    .end local v3    # "dataPosition":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    .end local v4    # "startOffset":J
    .end local v6    # "length":I
    :cond_5
    nop

    .line 3516
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 3515
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 3512
    :catch_0
    move-exception v1

    .line 3513
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3515
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6

    .line 3516
    goto :goto_0

    .line 3521
    :cond_6
    :goto_1
    return-object v0

    .line 3515
    :goto_2
    if-eqz v2, :cond_7

    .line 3516
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 3519
    :cond_7
    throw v1

    .line 3477
    .end local v0    # "sefData":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_8
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    return-object v1

    .line 3472
    :cond_9
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    return-object v1
.end method

.method public static getSEFDataCount(Ljava/io/File;)I
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3533
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3534
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 3539
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v1

    .line 3545
    .local v1, "ret":I
    return v1

    .line 3535
    .end local v1    # "ret":I
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    const/4 v1, -0x1

    return v1
.end method

.method public static getSEFDataCount(Ljava/lang/String;)I
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 3559
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3564
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->getSEFDataCount(Ljava/lang/String;)I

    move-result v0

    .line 3570
    .local v0, "ret":I
    return v0

    .line 3560
    .end local v0    # "ret":I
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExtendedFormat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    const/4 v0, -0x1

    return v0
.end method

.method public static getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .line 3329
    const/4 v0, 0x0

    const-string v1, "SemExtendedFormat"

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 3334
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 3339
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v2

    .line 3340
    .local v2, "posArray":[J
    if-nez v2, :cond_2

    .line 3341
    const-string v3, "No SEF data is found in file."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    return-object v0

    .line 3345
    :cond_2
    new-instance v0, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;

    invoke-direct {v0}, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;-><init>()V

    .line 3346
    .local v0, "position":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    const/4 v1, 0x0

    aget-wide v3, v2, v1

    iput-wide v3, v0, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->offset:J

    .line 3347
    const/4 v1, 0x1

    aget-wide v3, v2, v1

    iput-wide v3, v0, Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;->length:J

    .line 3349
    return-object v0

    .line 3335
    .end local v0    # "position":Lcom/samsung/android/media/SemExtendedFormat$SEFDataPosition;
    .end local v2    # "posArray":[J
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    return-object v0

    .line 3330
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    return-object v0
.end method

.method public static getSEFDataPositionArray(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .line 3365
    const/4 v0, 0x0

    const-string v1, "SemExtendedFormat"

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 3370
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 3375
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataPosition(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v2

    .line 3376
    .local v2, "posArray":[J
    if-nez v2, :cond_2

    .line 3377
    const-string v3, "No SEF data is found in file."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    return-object v0

    .line 3381
    :cond_2
    return-object v2

    .line 3371
    .end local v2    # "posArray":[J
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    return-object v0

    .line 3366
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    return-object v0
.end method

.method public static getSEFDataType(Ljava/io/File;Ljava/lang/String;)I
    .locals 5
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3583
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3588
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "SemExtendedFormat"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 3593
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 3598
    :cond_1
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3594
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    return v1

    .line 3589
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    return v1
.end method

.method public static getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .line 3617
    const/4 v0, -0x1

    const-string v1, "SemExtendedFormat"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_1

    .line 3622
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    .line 3627
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->getSEFDataType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3623
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    return v0

    .line 3618
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    .line 1557
    invoke-static {}, Lcom/samsung/android/media/SEFJNI;->getNativeVersion()I

    move-result v0

    .line 1558
    .local v0, "native_version":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.19_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1564
    .local v1, "version":Ljava/lang/String;
    return-object v1
.end method

.method public static hasData(Ljava/io/File;I)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1477
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1482
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    .line 1487
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1488
    return v2

    .line 1490
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v4

    .line 1491
    .local v4, "currentTypes":[I
    if-nez v4, :cond_2

    .line 1492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return v2

    .line 1496
    :cond_2
    array-length v1, v4

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    .local v1, "i":I
    :goto_0
    if-le v1, v3, :cond_4

    .line 1497
    aget v6, v4, v1

    if-ne p1, v6, :cond_3

    .line 1498
    return v5

    .line 1496
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1502
    .end local v1    # "i":I
    :cond_4
    return v2

    .line 1483
    .end local v4    # "currentTypes":[I
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Data Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    return v2
.end method

.method public static hasData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1515
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 1525
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1526
    return v2

    .line 1528
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listKeyNames(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    .line 1529
    .local v3, "currentTypes":[Ljava/lang/String;
    const-string v4, "Invalid file : "

    if-nez v3, :cond_2

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return v2

    .line 1532
    :cond_2
    array-length v5, v3

    if-gtz v5, :cond_3

    .line 1533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    return v2

    .line 1537
    :cond_3
    array-length v1, v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_0
    const/4 v5, -0x1

    if-le v1, v5, :cond_5

    .line 1538
    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1539
    return v4

    .line 1537
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1543
    .end local v1    # "i":I
    :cond_5
    return v2

    .line 1521
    .end local v3    # "currentTypes":[Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", keyName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return v2
.end method

.method public static hasDataType(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .line 1730
    const-string v0, "SemExtendedFormat"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 1735
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1736
    return v1

    .line 1738
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v3

    .line 1739
    .local v3, "currentTypes":[I
    if-nez v3, :cond_2

    .line 1740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    return v1

    .line 1744
    :cond_2
    array-length v0, v3

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_0
    if-le v0, v2, :cond_4

    .line 1745
    aget v5, v3, v0

    if-ne p1, v5, :cond_3

    .line 1746
    return v4

    .line 1744
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1750
    .end local v0    # "i":I
    :cond_4
    return v1

    .line 1731
    .end local v3    # "currentTypes":[I
    :cond_5
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Data Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    return v1
.end method

.method public static hasSEFData(Ljava/io/File;I)Z
    .locals 7
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1644
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    goto :goto_1

    .line 1654
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1655
    return v2

    .line 1657
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/io/File;)[I

    move-result-object v4

    .line 1658
    .local v4, "currentTypes":[I
    if-nez v4, :cond_2

    .line 1659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid file : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    return v2

    .line 1663
    :cond_2
    array-length v1, v4

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    .local v1, "i":I
    :goto_0
    if-le v1, v3, :cond_4

    .line 1664
    aget v6, v4, v1

    if-ne p1, v6, :cond_3

    .line 1665
    return v5

    .line 1663
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1669
    .end local v1    # "i":I
    :cond_4
    return v2

    .line 1650
    .end local v4    # "currentTypes":[I
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Data Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return v2
.end method

.method public static hasSEFData(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1683
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "SemExtendedFormat"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 1693
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1694
    return v2

    .line 1696
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemExtendedFormat;->listKeyNames(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    .line 1697
    .local v3, "currentTypes":[Ljava/lang/String;
    const-string v4, "Invalid file : "

    if-nez v3, :cond_2

    .line 1698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    return v2

    .line 1700
    :cond_2
    array-length v5, v3

    if-gtz v5, :cond_3

    .line 1701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    return v2

    .line 1705
    :cond_3
    array-length v1, v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .local v1, "i":I
    :goto_0
    const/4 v5, -0x1

    if-le v1, v5, :cond_5

    .line 1706
    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1707
    return v4

    .line 1705
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1711
    .end local v1    # "i":I
    :cond_5
    return v2

    .line 1689
    .end local v3    # "currentTypes":[Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", keyName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return v2
.end method

.method public static isMp4ConversionSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcPath"    # Ljava/lang/String;

    .line 3899
    invoke-static {p1}, Lcom/samsung/android/media/SemExtendedFormat;->getMajorDataType(Ljava/lang/String;)I

    move-result v0

    .line 3901
    .local v0, "type":I
    const/4 v1, 0x0

    const-string v2, "SemExtendedFormat"

    sparse-switch v0, :sswitch_data_0

    .line 3917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This type of file is not yet supported. type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    return v1

    .line 3909
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 3911
    :sswitch_1
    const-string v3, "MotionWideSelfie is not supported from R OS. So, MP4 Conversion for MotionWideSelfie is removed from R OS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    return v1

    .line 3906
    :sswitch_2
    const-string v3, "MotionPanoramaShot is not supported from R OS. So, MP4 Conversion for MotionPanoramaShot is removed from R OS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    return v1

    .line 3903
    :sswitch_3
    const-string v3, "VirtualShot is not supported from R OS. So, MP4 Conversion for VirtualShot is removed from R OS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    return v1

    .line 3914
    :sswitch_4
    const-string v3, "SoundNShot is not supported from P OS. So, MP4 Conversion for SoundNShot is removed from Q OS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x800 -> :sswitch_4
        0x8d0 -> :sswitch_3
        0x8e0 -> :sswitch_2
        0x970 -> :sswitch_1
        0xa30 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSEFFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1579
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1587
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1588
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 1590
    .end local v1    # "ret":Z
    :cond_1
    const/4 v1, 0x1

    .line 1597
    .restart local v1    # "ret":Z
    :goto_0
    return v1

    .line 1582
    .end local v1    # "ret":Z
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v1, 0x0

    return v1
.end method

.method public static isSEFFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 1615
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1621
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1622
    const/4 v0, 0x0

    .local v0, "ret":Z
    goto :goto_0

    .line 1624
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x1

    .line 1631
    .restart local v0    # "ret":Z
    :goto_0
    return v0

    .line 1616
    .end local v0    # "ret":Z
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExtendedFormat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidFile(Landroid/os/ParcelFileDescriptor;)Z
    .locals 1
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1455
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->isSEFfileDescriptor(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    const/4 v0, 0x0

    .local v0, "ret":Z
    goto :goto_0

    .line 1458
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x1

    .line 1465
    .restart local v0    # "ret":Z
    :goto_0
    return v0
.end method

.method public static isValidFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1421
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1432
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->isSEFFile(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1433
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 1435
    .end local v1    # "ret":Z
    :cond_1
    const/4 v1, 0x1

    .line 1442
    .restart local v1    # "ret":Z
    :goto_0
    return v1

    .line 1427
    .end local v1    # "ret":Z
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const/4 v1, 0x0

    return v1
.end method

.method private static isViewerInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 3927
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3929
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3930
    return v2

    .line 3931
    :catch_0
    move-exception v1

    .line 3932
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 3934
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public static listKeyNames(Ljava/io/File;)[Ljava/lang/String;
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3233
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3238
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 3243
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3239
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    const/4 v1, 0x0

    return-object v1
.end method

.method public static listKeyNames(Ljava/io/File;I)[Ljava/lang/String;
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .param p1, "dataType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3256
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3261
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3266
    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3262
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Data Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    const/4 v1, 0x0

    return-object v1
.end method

.method public static listKeyNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 3284
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3289
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->listKeyNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3285
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExtendedFormat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dataType"    # I

    .line 3308
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3313
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/media/SEFJNI;->listKeyNamesByDataType(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3309
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Data Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExtendedFormat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listSEFDataTypes(Ljava/io/File;)[I
    .locals 3
    .param p0, "sefFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3639
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 3644
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 3649
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1

    .line 3645
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemExtendedFormat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3646
    const/4 v1, 0x0

    return-object v1
.end method

.method public static listSEFDataTypes(Ljava/lang/String;)[I
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .line 3667
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3672
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SEFJNI;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0

    .line 3668
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemExtendedFormat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    const/4 v0, 0x0

    return-object v0
.end method
