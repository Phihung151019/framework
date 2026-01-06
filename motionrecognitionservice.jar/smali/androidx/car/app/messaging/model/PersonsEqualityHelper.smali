.class Landroidx/car/app/messaging/model/PersonsEqualityHelper;
.super Ljava/lang/Object;
.source "PersonsEqualityHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arePersonsEqual(Landroidx/core/app/Person;Landroidx/core/app/Person;)Z
    .locals 8
    .param p0, "person1"    # Landroidx/core/app/Person;
    .param p1, "person2"    # Landroidx/core/app/Person;

    .line 48
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 49
    return v0

    .line 50
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "key1":Ljava/lang/String;
    invoke-virtual {p1}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "key2":Ljava/lang/String;
    if-nez v2, :cond_4

    if-eqz v3, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "name1":Ljava/lang/String;
    invoke-virtual {p1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "name2":Ljava/lang/String;
    nop

    .line 67
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 68
    invoke-virtual {p0}, Landroidx/core/app/Person;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/core/app/Person;->getUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    invoke-virtual {p0}, Landroidx/core/app/Person;->isBot()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/core/app/Person;->isBot()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 70
    invoke-virtual {p0}, Landroidx/core/app/Person;->isImportant()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1}, Landroidx/core/app/Person;->isImportant()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 66
    :goto_0
    return v0

    .line 58
    .end local v4    # "name1":Ljava/lang/String;
    .end local v5    # "name2":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 51
    .end local v2    # "key1":Ljava/lang/String;
    .end local v3    # "key2":Ljava/lang/String;
    :cond_5
    :goto_2
    return v1
.end method

.method public static getPersonHashCode(Landroidx/core/app/Person;)I
    .locals 5
    .param p0, "person"    # Landroidx/core/app/Person;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/core/app/Person;->isBot()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 42
    invoke-virtual {p0}, Landroidx/core/app/Person;->isImportant()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
