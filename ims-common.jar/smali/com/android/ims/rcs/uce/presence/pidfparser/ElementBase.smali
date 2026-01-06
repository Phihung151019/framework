.class public abstract Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.super Ljava/lang/Object;
.source "ElementBase.java"


# instance fields
.field private blacklist mElementName:Ljava/lang/String;

.field private blacklist mNamespace:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->initNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->mNamespace:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->initElementName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->mElementName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getElementName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->mElementName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNamespace()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract blacklist initElementName()Ljava/lang/String;
.end method

.method protected abstract blacklist initNamespace()Ljava/lang/String;
.end method

.method protected blacklist moveToElementEndTag(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 70
    move v0, p2

    .line 73
    .local v0, "eventType":I
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    return-void

    .line 76
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 79
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    return-void
.end method

.method public abstract blacklist parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract blacklist serialize(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected blacklist verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
