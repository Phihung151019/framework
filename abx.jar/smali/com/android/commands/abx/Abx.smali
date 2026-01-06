.class public Lcom/android/commands/abx/Abx;
.super Ljava/lang/Object;
.source "Abx.java"


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: abx2xml [-i] input [output]\nusage: xml2abx [-i] input [output]\n\nConverts between human-readable XML and Android Binary XML.\n\nWhen invoked with the \'-i\' argument, the output of a successful conversion\nwill overwrite the original input file. Input can be \'-\' to use stdin, and\noutput can be \'-\' to use stdout.\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-static {p0}, Lcom/android/commands/abx/Abx;->mainInternal([Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 115
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "usage: abx2xml [-i] input [output]\nusage: xml2abx [-i] input [output]\n\nConverts between human-readable XML and Android Binary XML.\n\nWhen invoked with the \'-i\' argument, the output of a successful conversion\nwill overwrite the original input file. Input can be \'-\' to use stdin, and\noutput can be \'-\' to use stdout.\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static mainInternal([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 65
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    .line 71
    const/4 v0, 0x0

    aget-object v2, p0, v0

    const-string v3, "abx2xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 73
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_0

    .line 74
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    aget-object v0, p0, v0

    const-string v2, "xml2abx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 76
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    .line 81
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    const-string v3, "-i"

    const/4 v4, 0x1

    aget-object v5, p0, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 82
    .local v3, "inPlace":Z
    if-eqz v3, :cond_1

    aget-object v5, p0, v1

    goto :goto_1

    :cond_1
    aget-object v5, p0, v4

    .line 83
    .local v5, "inputArg":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".tmp"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    aget-object v1, p0, v1

    .line 85
    .local v1, "outputArg":Ljava/lang/String;
    :goto_2
    :try_start_0
    invoke-static {v5}, Lcom/android/commands/abx/Abx;->openInput(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/commands/abx/Abx;->openOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_2
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 89
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 90
    invoke-static {v0, v2}, Landroid/util/Xml;->copy(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 91
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v7, :cond_3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v7    # "os":Ljava/io/OutputStream;
    :cond_3
    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_4
    nop

    .line 101
    if-eqz v3, :cond_6

    .line 102
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 103
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Failed rename"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    :cond_6
    :goto_3
    return-void

    .line 85
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    if-eqz v7, :cond_7

    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v8

    :try_start_6
    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "outputArg":Ljava/lang/String;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "inPlace":Z
    .end local v5    # "inputArg":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local p0    # "args":[Ljava/lang/String;
    :cond_7
    :goto_4
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1    # "outputArg":Ljava/lang/String;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "inPlace":Z
    .restart local v5    # "inputArg":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v4

    if-eqz v6, :cond_8

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v7

    :try_start_8
    invoke-virtual {v4, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "outputArg":Ljava/lang/String;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "inPlace":Z
    .end local v5    # "inputArg":Ljava/lang/String;
    .end local p0    # "args":[Ljava/lang/String;
    :cond_8
    :goto_5
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 92
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1    # "outputArg":Ljava/lang/String;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "inPlace":Z
    .restart local v5    # "inputArg":Ljava/lang/String;
    .restart local p0    # "args":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/Exception;
    if-eqz v3, :cond_9

    .line 95
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 97
    :cond_9
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 78
    .end local v0    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "outputArg":Ljava/lang/String;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "inPlace":Z
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "inputArg":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static openInput(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static openOutput(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
