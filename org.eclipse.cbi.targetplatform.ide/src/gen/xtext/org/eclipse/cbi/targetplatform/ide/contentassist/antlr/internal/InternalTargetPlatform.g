/*******************************************************************************
 * Copyright (c) 2012-2017 Obeo and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     Mikael Barbero (Obeo) - initial API and implementation
 *******************************************************************************/
grammar InternalTargetPlatform;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.cbi.targetplatform.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.cbi.targetplatform.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.cbi.targetplatform.services.TargetPlatformGrammarAccess;

}
@parser::members {
	private TargetPlatformGrammarAccess grammarAccess;

	public void setGrammarAccess(TargetPlatformGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleTargetPlatform
entryRuleTargetPlatform
:
{ before(grammarAccess.getTargetPlatformRule()); }
	 ruleTargetPlatform
{ after(grammarAccess.getTargetPlatformRule()); } 
	 EOF 
;

// Rule TargetPlatform
ruleTargetPlatform 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTargetPlatformAccess().getGroup()); }
		(rule__TargetPlatform__Group__0)?
		{ after(grammarAccess.getTargetPlatformAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTargetContent
entryRuleTargetContent
:
{ before(grammarAccess.getTargetContentRule()); }
	 ruleTargetContent
{ after(grammarAccess.getTargetContentRule()); } 
	 EOF 
;

// Rule TargetContent
ruleTargetContent 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTargetContentAccess().getAlternatives()); }
		(rule__TargetContent__Alternatives)
		{ after(grammarAccess.getTargetContentAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOptions
entryRuleOptions
:
{ before(grammarAccess.getOptionsRule()); }
	 ruleOptions
{ after(grammarAccess.getOptionsRule()); } 
	 EOF 
;

// Rule Options
ruleOptions 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOptionsAccess().getGroup()); }
		(rule__Options__Group__0)
		{ after(grammarAccess.getOptionsAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEnvironment
entryRuleEnvironment
:
{ before(grammarAccess.getEnvironmentRule()); }
	 ruleEnvironment
{ after(grammarAccess.getEnvironmentRule()); } 
	 EOF 
;

// Rule Environment
ruleEnvironment 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEnvironmentAccess().getGroup()); }
		(rule__Environment__Group__0)
		{ after(grammarAccess.getEnvironmentAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIncludeDeclaration
entryRuleIncludeDeclaration
:
{ before(grammarAccess.getIncludeDeclarationRule()); }
	 ruleIncludeDeclaration
{ after(grammarAccess.getIncludeDeclarationRule()); } 
	 EOF 
;

// Rule IncludeDeclaration
ruleIncludeDeclaration 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIncludeDeclarationAccess().getGroup()); }
		(rule__IncludeDeclaration__Group__0)
		{ after(grammarAccess.getIncludeDeclarationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLocation
entryRuleLocation
:
{ before(grammarAccess.getLocationRule()); }
	 ruleLocation
{ after(grammarAccess.getLocationRule()); } 
	 EOF 
;

// Rule Location
ruleLocation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLocationAccess().getGroup()); }
		(rule__Location__Group__0)
		{ after(grammarAccess.getLocationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIU
entryRuleIU
:
{ before(grammarAccess.getIURule()); }
	 ruleIU
{ after(grammarAccess.getIURule()); } 
	 EOF 
;

// Rule IU
ruleIU 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIUAccess().getGroup()); }
		(rule__IU__Group__0)
		{ after(grammarAccess.getIUAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleVersion
entryRuleVersion
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
:
{ before(grammarAccess.getVersionRule()); }
	 ruleVersion
{ after(grammarAccess.getVersionRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule Version
ruleVersion 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVersionAccess().getGroup()); }
		(rule__Version__Group__0)
		{ after(grammarAccess.getVersionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Entry rule entryRuleVersionRange
entryRuleVersionRange
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
}
:
{ before(grammarAccess.getVersionRangeRule()); }
	 ruleVersionRange
{ after(grammarAccess.getVersionRangeRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule VersionRange
ruleVersionRange 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVersionRangeAccess().getAlternatives()); }
		(rule__VersionRange__Alternatives)
		{ after(grammarAccess.getVersionRangeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
}

// Rule Option
ruleOption
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOptionAccess().getAlternatives()); }
		(rule__Option__Alternatives)
		{ after(grammarAccess.getOptionAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetContent__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTargetContentAccess().getOptionsParserRuleCall_0()); }
		ruleOptions
		{ after(grammarAccess.getTargetContentAccess().getOptionsParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getTargetContentAccess().getEnvironmentParserRuleCall_1()); }
		ruleEnvironment
		{ after(grammarAccess.getTargetContentAccess().getEnvironmentParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getTargetContentAccess().getIncludeDeclarationParserRuleCall_2()); }
		ruleIncludeDeclaration
		{ after(grammarAccess.getTargetContentAccess().getIncludeDeclarationParserRuleCall_2()); }
	)
	|
	(
		{ before(grammarAccess.getTargetContentAccess().getLocationParserRuleCall_3()); }
		ruleLocation
		{ after(grammarAccess.getTargetContentAccess().getLocationParserRuleCall_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Alternatives_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIUAccess().getVersionAssignment_1_1_0()); }
		(rule__IU__VersionAssignment_1_1_0)
		{ after(grammarAccess.getIUAccess().getVersionAssignment_1_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getIUAccess().getVersionAssignment_1_1_1()); }
		(rule__IU__VersionAssignment_1_1_1)
		{ after(grammarAccess.getIUAccess().getVersionAssignment_1_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Alternatives_1_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVersionAccess().getIDTerminalRuleCall_1_2_2_1_0()); }
		RULE_ID
		{ after(grammarAccess.getVersionAccess().getIDTerminalRuleCall_1_2_2_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_2_2_1_1()); }
		RULE_INT
		{ after(grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_2_2_1_1()); }
	)
	|
	(
		{ before(grammarAccess.getVersionAccess().getQUALIFIERTerminalRuleCall_1_2_2_1_2()); }
		RULE_QUALIFIER
		{ after(grammarAccess.getVersionAccess().getQUALIFIERTerminalRuleCall_1_2_2_1_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVersionRangeAccess().getGroup_0()); }
		(rule__VersionRange__Group_0__0)
		{ after(grammarAccess.getVersionRangeAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_1()); }
		ruleVersion
		{ after(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getVersionRangeAccess().getLazyKeyword_2()); }
		'lazy'
		{ after(grammarAccess.getVersionRangeAccess().getLazyKeyword_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Alternatives_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVersionRangeAccess().getLeftParenthesisKeyword_0_0_0()); }
		'('
		{ after(grammarAccess.getVersionRangeAccess().getLeftParenthesisKeyword_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getVersionRangeAccess().getLeftSquareBracketKeyword_0_0_1()); }
		'['
		{ after(grammarAccess.getVersionRangeAccess().getLeftSquareBracketKeyword_0_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Alternatives_0_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVersionRangeAccess().getRightParenthesisKeyword_0_4_0()); }
		')'
		{ after(grammarAccess.getVersionRangeAccess().getRightParenthesisKeyword_0_4_0()); }
	)
	|
	(
		{ before(grammarAccess.getVersionRangeAccess().getRightSquareBracketKeyword_0_4_1()); }
		']'
		{ after(grammarAccess.getVersionRangeAccess().getRightSquareBracketKeyword_0_4_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Option__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOptionAccess().getINCLUDE_REQUIREDEnumLiteralDeclaration_0()); }
		('requirements')
		{ after(grammarAccess.getOptionAccess().getINCLUDE_REQUIREDEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getOptionAccess().getINCLUDE_ALL_ENVIRONMENTSEnumLiteralDeclaration_1()); }
		('allEnvironments')
		{ after(grammarAccess.getOptionAccess().getINCLUDE_ALL_ENVIRONMENTSEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getOptionAccess().getINCLUDE_SOURCEEnumLiteralDeclaration_2()); }
		('source')
		{ after(grammarAccess.getOptionAccess().getINCLUDE_SOURCEEnumLiteralDeclaration_2()); }
	)
	|
	(
		{ before(grammarAccess.getOptionAccess().getINCLUDE_CONFIGURE_PHASEEnumLiteralDeclaration_3()); }
		('configurePhase')
		{ after(grammarAccess.getOptionAccess().getINCLUDE_CONFIGURE_PHASEEnumLiteralDeclaration_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPlatform__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TargetPlatform__Group__0__Impl
	rule__TargetPlatform__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPlatform__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTargetPlatformAccess().getTargetKeyword_0()); }
	'target'
	{ after(grammarAccess.getTargetPlatformAccess().getTargetKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPlatform__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TargetPlatform__Group__1__Impl
	rule__TargetPlatform__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPlatform__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTargetPlatformAccess().getNameAssignment_1()); }
	(rule__TargetPlatform__NameAssignment_1)
	{ after(grammarAccess.getTargetPlatformAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPlatform__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TargetPlatform__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPlatform__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTargetPlatformAccess().getContentsAssignment_2()); }
	(rule__TargetPlatform__ContentsAssignment_2)*
	{ after(grammarAccess.getTargetPlatformAccess().getContentsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Options__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Options__Group__0__Impl
	rule__Options__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOptionsAccess().getWithKeyword_0()); }
	'with'
	{ after(grammarAccess.getOptionsAccess().getWithKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Options__Group__1__Impl
	rule__Options__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOptionsAccess().getOptionsAssignment_1()); }
	(rule__Options__OptionsAssignment_1)
	{ after(grammarAccess.getOptionsAccess().getOptionsAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Options__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOptionsAccess().getGroup_2()); }
	(rule__Options__Group_2__0)*
	{ after(grammarAccess.getOptionsAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Options__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Options__Group_2__0__Impl
	rule__Options__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOptionsAccess().getCommaKeyword_2_0()); }
	(',')?
	{ after(grammarAccess.getOptionsAccess().getCommaKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Options__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOptionsAccess().getOptionsAssignment_2_1()); }
	(rule__Options__OptionsAssignment_2_1)
	{ after(grammarAccess.getOptionsAccess().getOptionsAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Environment__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Environment__Group__0__Impl
	rule__Environment__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEnvironmentAccess().getEnvironmentAction_0()); }
	()
	{ after(grammarAccess.getEnvironmentAccess().getEnvironmentAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Environment__Group__1__Impl
	rule__Environment__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEnvironmentAccess().getEnvironmentKeyword_1()); }
	'environment'
	{ after(grammarAccess.getEnvironmentAccess().getEnvironmentKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Environment__Group__2__Impl
	rule__Environment__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEnvironmentAccess().getEnvAssignment_2()); }
	(rule__Environment__EnvAssignment_2)
	{ after(grammarAccess.getEnvironmentAccess().getEnvAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Environment__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEnvironmentAccess().getGroup_3()); }
	(rule__Environment__Group_3__0)*
	{ after(grammarAccess.getEnvironmentAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Environment__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Environment__Group_3__0__Impl
	rule__Environment__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEnvironmentAccess().getCommaKeyword_3_0()); }
	(',')?
	{ after(grammarAccess.getEnvironmentAccess().getCommaKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Environment__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEnvironmentAccess().getEnvAssignment_3_1()); }
	(rule__Environment__EnvAssignment_3_1)
	{ after(grammarAccess.getEnvironmentAccess().getEnvAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IncludeDeclaration__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IncludeDeclaration__Group__0__Impl
	rule__IncludeDeclaration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeDeclaration__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIncludeDeclarationAccess().getIncludeKeyword_0()); }
	'include'
	{ after(grammarAccess.getIncludeDeclarationAccess().getIncludeKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeDeclaration__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IncludeDeclaration__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeDeclaration__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIncludeDeclarationAccess().getImportURIAssignment_1()); }
	(rule__IncludeDeclaration__ImportURIAssignment_1)
	{ after(grammarAccess.getIncludeDeclarationAccess().getImportURIAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Location__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group__0__Impl
	rule__Location__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getLocationKeyword_0()); }
	'location'
	{ after(grammarAccess.getLocationAccess().getLocationKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group__1__Impl
	rule__Location__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getUnorderedGroup_1()); }
	(rule__Location__UnorderedGroup_1)
	{ after(grammarAccess.getLocationAccess().getUnorderedGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getGroup_2()); }
	(rule__Location__Group_2__0)?
	{ after(grammarAccess.getLocationAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Location__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2__0__Impl
	rule__Location__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getLeftCurlyBracketKeyword_2_0()); }
	'{'
	{ after(grammarAccess.getLocationAccess().getLeftCurlyBracketKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2__1__Impl
	rule__Location__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getGroup_2_1()); }
	(rule__Location__Group_2_1__0)?
	{ after(grammarAccess.getLocationAccess().getGroup_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2__2__Impl
	rule__Location__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getIusAssignment_2_2()); }
	(rule__Location__IusAssignment_2_2)*
	{ after(grammarAccess.getLocationAccess().getIusAssignment_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getRightCurlyBracketKeyword_2_3()); }
	'}'
	{ after(grammarAccess.getLocationAccess().getRightCurlyBracketKeyword_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Location__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2_1__0__Impl
	rule__Location__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getWithKeyword_2_1_0()); }
	'with'
	{ after(grammarAccess.getLocationAccess().getWithKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2_1__1__Impl
	rule__Location__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getOptionsAssignment_2_1_1()); }
	(rule__Location__OptionsAssignment_2_1_1)
	{ after(grammarAccess.getLocationAccess().getOptionsAssignment_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getGroup_2_1_2()); }
	(rule__Location__Group_2_1_2__0)*
	{ after(grammarAccess.getLocationAccess().getGroup_2_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Location__Group_2_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2_1_2__0__Impl
	rule__Location__Group_2_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getCommaKeyword_2_1_2_0()); }
	(',')?
	{ after(grammarAccess.getLocationAccess().getCommaKeyword_2_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__Group_2_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__Group_2_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLocationAccess().getOptionsAssignment_2_1_2_1()); }
	(rule__Location__OptionsAssignment_2_1_2_1)
	{ after(grammarAccess.getLocationAccess().getOptionsAssignment_2_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IU__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IU__Group__0__Impl
	rule__IU__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIUAccess().getIDAssignment_0()); }
	(rule__IU__IDAssignment_0)
	{ after(grammarAccess.getIUAccess().getIDAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IU__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIUAccess().getGroup_1()); }
	(rule__IU__Group_1__0)?
	{ after(grammarAccess.getIUAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IU__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IU__Group_1__0__Impl
	rule__IU__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIUAccess().getGroup_1_0()); }
	(rule__IU__Group_1_0__0)?
	{ after(grammarAccess.getIUAccess().getGroup_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IU__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIUAccess().getAlternatives_1_1()); }
	(rule__IU__Alternatives_1_1)
	{ after(grammarAccess.getIUAccess().getAlternatives_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__IU__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IU__Group_1_0__0__Impl
	rule__IU__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIUAccess().getSemicolonKeyword_1_0_0()); }
	';'
	{ after(grammarAccess.getIUAccess().getSemicolonKeyword_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IU__Group_1_0__1__Impl
	rule__IU__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIUAccess().getVersionKeyword_1_0_1()); }
	'version'
	{ after(grammarAccess.getIUAccess().getVersionKeyword_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__IU__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getIUAccess().getEqualsSignKeyword_1_0_2()); }
	'='
	{ after(grammarAccess.getIUAccess().getEqualsSignKeyword_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Version__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group__0__Impl
	rule__Version__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getINTTerminalRuleCall_0()); }
	RULE_INT
	{ after(grammarAccess.getVersionAccess().getINTTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getGroup_1()); }
	(rule__Version__Group_1__0)?
	{ after(grammarAccess.getVersionAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Version__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group_1__0__Impl
	rule__Version__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getVersionAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group_1__1__Impl
	rule__Version__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_1()); }
	RULE_INT
	{ after(grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getGroup_1_2()); }
	(rule__Version__Group_1_2__0)?
	{ after(grammarAccess.getVersionAccess().getGroup_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Version__Group_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group_1_2__0__Impl
	rule__Version__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getFullStopKeyword_1_2_0()); }
	'.'
	{ after(grammarAccess.getVersionAccess().getFullStopKeyword_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group_1_2__1__Impl
	rule__Version__Group_1_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_2_1()); }
	RULE_INT
	{ after(grammarAccess.getVersionAccess().getINTTerminalRuleCall_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group_1_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getGroup_1_2_2()); }
	(rule__Version__Group_1_2_2__0)?
	{ after(grammarAccess.getVersionAccess().getGroup_1_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Version__Group_1_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group_1_2_2__0__Impl
	rule__Version__Group_1_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getFullStopKeyword_1_2_2_0()); }
	'.'
	{ after(grammarAccess.getVersionAccess().getFullStopKeyword_1_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Version__Group_1_2_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Version__Group_1_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionAccess().getAlternatives_1_2_2_1()); }
	(rule__Version__Alternatives_1_2_2_1)
	{ after(grammarAccess.getVersionAccess().getAlternatives_1_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__VersionRange__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VersionRange__Group_0__0__Impl
	rule__VersionRange__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionRangeAccess().getAlternatives_0_0()); }
	(rule__VersionRange__Alternatives_0_0)
	{ after(grammarAccess.getVersionRangeAccess().getAlternatives_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VersionRange__Group_0__1__Impl
	rule__VersionRange__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_0_1()); }
	ruleVersion
	{ after(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VersionRange__Group_0__2__Impl
	rule__VersionRange__Group_0__3
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionRangeAccess().getCommaKeyword_0_2()); }
	','
	{ after(grammarAccess.getVersionRangeAccess().getCommaKeyword_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VersionRange__Group_0__3__Impl
	rule__VersionRange__Group_0__4
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_0_3()); }
	ruleVersion
	{ after(grammarAccess.getVersionRangeAccess().getVersionParserRuleCall_0_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__VersionRange__Group_0__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__VersionRange__Group_0__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getVersionRangeAccess().getAlternatives_0_4()); }
	(rule__VersionRange__Alternatives_0_4)
	{ after(grammarAccess.getVersionRangeAccess().getAlternatives_0_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Location__UnorderedGroup_1
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getLocationAccess().getUnorderedGroup_1());
	}
:
	rule__Location__UnorderedGroup_1__0
	{getUnorderedGroupHelper().canLeave(grammarAccess.getLocationAccess().getUnorderedGroup_1())}?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getLocationAccess().getUnorderedGroup_1());
	restoreStackSize(stackSize);
}

rule__Location__UnorderedGroup_1__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getLocationAccess().getUnorderedGroup_1(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getLocationAccess().getUnorderedGroup_1(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getLocationAccess().getIDAssignment_1_0()); }
					(rule__Location__IDAssignment_1_0)
					{ after(grammarAccess.getLocationAccess().getIDAssignment_1_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getLocationAccess().getUnorderedGroup_1(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getLocationAccess().getUnorderedGroup_1(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getLocationAccess().getUriAssignment_1_1()); }
					(rule__Location__UriAssignment_1_1)
					{ after(grammarAccess.getLocationAccess().getUriAssignment_1_1()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLocationAccess().getUnorderedGroup_1());
	restoreStackSize(stackSize);
}

rule__Location__UnorderedGroup_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__UnorderedGroup_1__Impl
	rule__Location__UnorderedGroup_1__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__UnorderedGroup_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Location__UnorderedGroup_1__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__TargetPlatform__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTargetPlatformAccess().getNameSTRINGTerminalRuleCall_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getTargetPlatformAccess().getNameSTRINGTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TargetPlatform__ContentsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTargetPlatformAccess().getContentsTargetContentParserRuleCall_2_0()); }
		ruleTargetContent
		{ after(grammarAccess.getTargetPlatformAccess().getContentsTargetContentParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__OptionsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOptionsAccess().getOptionsOptionEnumRuleCall_1_0()); }
		ruleOption
		{ after(grammarAccess.getOptionsAccess().getOptionsOptionEnumRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Options__OptionsAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOptionsAccess().getOptionsOptionEnumRuleCall_2_1_0()); }
		ruleOption
		{ after(grammarAccess.getOptionsAccess().getOptionsOptionEnumRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__EnvAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEnvironmentAccess().getEnvIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getEnvironmentAccess().getEnvIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Environment__EnvAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEnvironmentAccess().getEnvIDTerminalRuleCall_3_1_0()); }
		RULE_ID
		{ after(grammarAccess.getEnvironmentAccess().getEnvIDTerminalRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IncludeDeclaration__ImportURIAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIncludeDeclarationAccess().getImportURISTRINGTerminalRuleCall_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getIncludeDeclarationAccess().getImportURISTRINGTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__IDAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLocationAccess().getIDIDTerminalRuleCall_1_0_0()); }
		RULE_ID
		{ after(grammarAccess.getLocationAccess().getIDIDTerminalRuleCall_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__UriAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLocationAccess().getUriSTRINGTerminalRuleCall_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getLocationAccess().getUriSTRINGTerminalRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__OptionsAssignment_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLocationAccess().getOptionsOptionEnumRuleCall_2_1_1_0()); }
		ruleOption
		{ after(grammarAccess.getLocationAccess().getOptionsOptionEnumRuleCall_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__OptionsAssignment_2_1_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLocationAccess().getOptionsOptionEnumRuleCall_2_1_2_1_0()); }
		ruleOption
		{ after(grammarAccess.getLocationAccess().getOptionsOptionEnumRuleCall_2_1_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Location__IusAssignment_2_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLocationAccess().getIusIUParserRuleCall_2_2_0()); }
		ruleIU
		{ after(grammarAccess.getLocationAccess().getIusIUParserRuleCall_2_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__IDAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIUAccess().getIDIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getIUAccess().getIDIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__VersionAssignment_1_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIUAccess().getVersionVersionRangeParserRuleCall_1_1_0_0()); }
		ruleVersionRange
		{ after(grammarAccess.getIUAccess().getVersionVersionRangeParserRuleCall_1_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__IU__VersionAssignment_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIUAccess().getVersionSTRINGTerminalRuleCall_1_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getIUAccess().getVersionSTRINGTerminalRuleCall_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_INT : ('0'..'9')+;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('.'? ('a'..'z'|'A'..'Z'|'^'|'_'|'-'|'0'..'9'))*;

RULE_QUALIFIER : ('a'..'z'|'A'..'Z'|'_'|'-'|'0'..'9')*;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
