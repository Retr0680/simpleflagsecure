.class public Lcom/android/server/policy/devicestate/config/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# instance fields
.field private conditions:Lcom/android/server/policy/devicestate/config/Conditions;

.field private flags:Lcom/android/server/policy/devicestate/config/Flags;

.field private identifier:Ljava/math/BigInteger;

.field private name:Ljava/lang/String;

.field private properties:Lcom/android/server/policy/devicestate/config/Properties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/DeviceState;
    .locals 7
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/android/server/policy/devicestate/config/DeviceState;

    invoke-direct {v0}, Lcom/android/server/policy/devicestate/config/DeviceState;-><init>()V

    .line 87
    .local v0, "_instance":Lcom/android/server/policy/devicestate/config/DeviceState;
    const/4 v1, 0x0

    .line 88
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 90
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_6

    if-eq v4, v6, :cond_6

    .line 92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "identifier"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 97
    .local v5, "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/DeviceState;->setIdentifier(Ljava/math/BigInteger;)V

    .line 98
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto :goto_1

    :cond_1
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 100
    move-object v5, v1

    .line 101
    .local v5, "_value":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/DeviceState;->setName(Ljava/lang/String;)V

    .line 102
    .end local v5    # "_value":Ljava/lang/String;
    goto :goto_1

    :cond_2
    const-string/jumbo v5, "properties"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/Properties;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Properties;

    move-result-object v5

    .line 104
    .local v5, "_value":Lcom/android/server/policy/devicestate/config/Properties;
    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/DeviceState;->setProperties(Lcom/android/server/policy/devicestate/config/Properties;)V

    .line 105
    .end local v5    # "_value":Lcom/android/server/policy/devicestate/config/Properties;
    goto :goto_1

    :cond_3
    const-string v5, "flags"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 106
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/Flags;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Flags;

    move-result-object v5

    .line 107
    .local v5, "_value":Lcom/android/server/policy/devicestate/config/Flags;
    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/DeviceState;->setFlags(Lcom/android/server/policy/devicestate/config/Flags;)V

    .line 108
    .end local v5    # "_value":Lcom/android/server/policy/devicestate/config/Flags;
    goto :goto_1

    :cond_4
    const-string v5, "conditions"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 109
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/Conditions;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Conditions;

    move-result-object v5

    .line 110
    .local v5, "_value":Lcom/android/server/policy/devicestate/config/Conditions;
    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/DeviceState;->setConditions(Lcom/android/server/policy/devicestate/config/Conditions;)V

    .line 111
    .end local v5    # "_value":Lcom/android/server/policy/devicestate/config/Conditions;
    goto :goto_1

    .line 112
    :cond_5
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 114
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 115
    :cond_6
    if-ne v4, v6, :cond_7

    .line 118
    return-object v0

    .line 116
    :cond_7
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DeviceState is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getConditions()Lcom/android/server/policy/devicestate/config/Conditions;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    return-object v0
.end method

.method public getFlags()Lcom/android/server/policy/devicestate/config/Flags;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    return-object v0
.end method

.method public getIdentifier()Ljava/math/BigInteger;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/server/policy/devicestate/config/Properties;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    return-object v0
.end method

.method hasConditions()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasFlags()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasIdentifier()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    return v0

    .line 18
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    return v0

    .line 33
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasProperties()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setConditions(Lcom/android/server/policy/devicestate/config/Conditions;)V
    .locals 0
    .param p1, "conditions"    # Lcom/android/server/policy/devicestate/config/Conditions;

    .line 82
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    .line 83
    return-void
.end method

.method public setFlags(Lcom/android/server/policy/devicestate/config/Flags;)V
    .locals 0
    .param p1, "flags"    # Lcom/android/server/policy/devicestate/config/Flags;

    .line 67
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    .line 68
    return-void
.end method

.method public setIdentifier(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "identifier"    # Ljava/math/BigInteger;

    .line 22
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    .line 23
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setProperties(Lcom/android/server/policy/devicestate/config/Properties;)V
    .locals 0
    .param p1, "properties"    # Lcom/android/server/policy/devicestate/config/Properties;

    .line 52
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    .line 53
    return-void
.end method
