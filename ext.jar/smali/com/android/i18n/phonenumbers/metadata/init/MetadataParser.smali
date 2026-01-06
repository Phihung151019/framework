.class public final Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
.super Ljava/lang/Object;
.source "MetadataParser.java"


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private final blacklist strictMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .locals 0
    .param p1, "strictMode"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->strictMode:Z

    .line 60
    return-void
.end method

.method private blacklist close(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 105
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error closing input stream (ignored)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private blacklist handleNullSource()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->strictMode:Z

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newLenientParser()Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
    .locals 2

    .line 45
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;-><init>(Z)V

    return-object v0
.end method

.method public static blacklist newStrictParser()Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
    .locals 2

    .line 53
    new-instance v0, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public blacklist parse(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 5
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 70
    if-nez p1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->handleNullSource()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 76
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 77
    .local v1, "phoneMetadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 78
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, "phoneMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    nop

    .line 89
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->close(Ljava/io/InputStream;)V

    .line 83
    return-object v3

    .line 81
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Empty metadata"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ois":Ljava/io/ObjectInputStream;
    .end local p0    # "this":Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
    .end local p1    # "source":Ljava/io/InputStream;
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v1    # "phoneMetadataCollection":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "phoneMetadata":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    .restart local v0    # "ois":Ljava/io/ObjectInputStream;
    .restart local p0    # "this":Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
    .restart local p1    # "source":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to parse metadata file"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "ois":Ljava/io/ObjectInputStream;
    .end local p0    # "this":Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
    .end local p1    # "source":Ljava/io/InputStream;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "ois":Ljava/io/ObjectInputStream;
    .restart local p0    # "this":Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;
    .restart local p1    # "source":Ljava/io/InputStream;
    :goto_0
    if-eqz v0, :cond_2

    .line 89
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->close(Ljava/io/InputStream;)V

    goto :goto_1

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/metadata/init/MetadataParser;->close(Ljava/io/InputStream;)V

    .line 93
    :goto_1
    throw v1
.end method
