.class public Lgov/nist/core/NameValue;
.super Lgov/nist/core/GenericObject;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/core/GenericObject;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x19c7fab1bcbf73beL


# instance fields
.field protected final greylist isFlagParameter:Z

.field protected greylist isQuotedString:Z

.field private greylist name:Ljava/lang/String;

.field private greylist quotes:Ljava/lang/String;

.field private greylist separator:Ljava/lang/String;

.field private greylist value:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 66
    const-string v1, "="

    iput-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    .line 69
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 97
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;
    .param p3, "isFlag"    # Z

    .line 78
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 82
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 84
    const-string v0, "="

    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 86
    iput-boolean p3, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 2

    .line 213
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    .line 214
    .local v0, "retval":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-static {v1}, Lgov/nist/core/NameValue;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 216
    :cond_0
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .locals 1

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 163
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-nez v0, :cond_4

    .line 164
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 166
    .local v0, "gv":Lgov/nist/core/GenericObject;
    iget-object v1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 168
    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    return-object p1

    .line 170
    .end local v0    # "gv":Lgov/nist/core/GenericObject;
    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObjectList;

    .line 172
    .local v0, "gvlist":Lgov/nist/core/GenericObjectList;
    iget-object v1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    return-object p1

    .line 174
    .end local v0    # "gvlist":Lgov/nist/core/GenericObjectList;
    :cond_1
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    return-object p1

    .line 184
    :cond_2
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    return-object p1

    .line 188
    :cond_3
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    return-object p1

    .line 191
    :cond_4
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 192
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 194
    .local v0, "gv":Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 195
    return-object p1

    .line 196
    .end local v0    # "gv":Lgov/nist/core/GenericObject;
    :cond_5
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObjectList;

    .line 198
    .local v0, "gvlist":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    return-object p1

    .line 201
    .end local v0    # "gvlist":Lgov/nist/core/GenericObjectList;
    :cond_6
    iget-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    return-object p1

    .line 204
    :cond_7
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v0, :cond_9

    .line 205
    :cond_8
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    return-object p1

    .line 208
    :cond_9
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    return v0

    .line 226
    :cond_1
    move-object v1, p1

    check-cast v1, Lgov/nist/core/NameValue;

    .line 227
    .local v1, "that":Lgov/nist/core/NameValue;
    const/4 v2, 0x1

    if-ne p0, v1, :cond_2

    .line 228
    return v2

    .line 229
    :cond_2
    iget-object v3, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 231
    :cond_4
    return v0

    .line 232
    :cond_5
    iget-object v3, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    iget-object v4, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 234
    return v0

    .line 235
    :cond_6
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v3, :cond_9

    iget-object v3, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 237
    :cond_8
    return v0

    .line 238
    :cond_9
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v4, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-ne v3, v4, :cond_a

    .line 239
    return v2

    .line 240
    :cond_a
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 242
    iget-boolean v3, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v3, :cond_b

    .line 243
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v2, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 244
    :cond_b
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 245
    .local v3, "val":Ljava/lang/String;
    iget-object v4, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "val1":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    move v0, v2

    :cond_c
    return v0

    .line 248
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "val1":Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    iget-object v2, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getKey()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getKey()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getValue()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getValue()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public greylist getValueAsObject()Ljava/lang/Object;
    .locals 1

    .line 127
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 282
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isValueQuoted()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    return v0
.end method

.method public greylist setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public greylist setQuotedValue()V
    .locals 1

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    .line 112
    const-string v0, "\""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public greylist setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sep"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public bridge synthetic whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 275
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 276
    return-object v0
.end method

.method public greylist setValueAsObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 143
    return-void
.end method
