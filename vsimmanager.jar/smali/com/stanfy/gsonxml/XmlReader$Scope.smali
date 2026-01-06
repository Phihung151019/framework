.class final enum Lcom/stanfy/gsonxml/XmlReader$Scope;
.super Ljava/lang/Enum;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stanfy/gsonxml/XmlReader$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;


# instance fields
.field final insideArray:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 26
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 28
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_EMBEDDED_ARRAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 30
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_PRIMITIVE_EMBEDDED_ARRAY"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 32
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_PRIMITIVE_ARRAY"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 34
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "PRIMITIVE_VALUE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 36
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "NAME"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 22
    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    sget-object v5, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    sget-object v6, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    sget-object v7, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    sget-object v8, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    sget-object v9, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    sget-object v10, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    filled-new-array/range {v4 .. v10}, [Lcom/stanfy/gsonxml/XmlReader$Scope;

    move-result-object v0

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->$VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "insideArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-boolean p3, p0, Lcom/stanfy/gsonxml/XmlReader$Scope;->insideArray:Z

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stanfy/gsonxml/XmlReader$Scope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    return-object v0
.end method

.method public static values()[Lcom/stanfy/gsonxml/XmlReader$Scope;
    .locals 1

    .line 22
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->$VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0}, [Lcom/stanfy/gsonxml/XmlReader$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stanfy/gsonxml/XmlReader$Scope;

    return-object v0
.end method
