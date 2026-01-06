.class public final Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
.super Ljava/lang/Object;
.source "PhoneNumberMatch.java"


# instance fields
.field private final greylist-max-o number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

.field private final greylist-max-o rawString:Ljava/lang/String;

.field private final greylist-max-o start:I


# direct methods
.method constructor greylist-max-o <init>(ILjava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "rawString"    # Ljava/lang/String;
    .param p3, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-ltz p1, :cond_1

    .line 75
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 78
    iput p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    .line 79
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 81
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start index must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-r end()I
    .locals 2

    .line 98
    iget v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 115
    return v0

    .line 117
    :cond_0
    instance-of v1, p1, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 118
    return v2

    .line 120
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 121
    .local v1, "other":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    iget v4, v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    iget-object v4, v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 122
    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 121
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 109
    iget v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-r number()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->number:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-object v0
.end method

.method public greylist-max-r rawString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r start()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberMatch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
